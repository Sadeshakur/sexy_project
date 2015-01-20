require_relative 'flipdeck'
include Questions

module Flipdeck
  class Server < Sinatra::Base

enable :logging, :sessions

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    get('/') do
      $client = FacebookOAuth::Client.new(
        :application_id         => ENV["FACEBOOK_OAUTH_ID"],
        :application_secret  => ENV["FACEBOOK_OAUTH_SECRET"],
        :callback                 => "http://localhost:9292/facebook/callback"
        )
      @facebook_auth_dialog_url = $client.authorize_url
      render(:erb, :flipdeck, {:layout => :default})
    end

    get('/facebook/callback') do
      access_token = $client.authorize(:code => params["code"])
      session["user_info"] = $client.me.info
      redirect to('/')
    end

    get('/signup') do
      render(:erb, :signup)
    end

    get('/logout') do
      render(:erb, :logout, { :layout => :default })
    end

    post("/flipdeck") do
      question = params["question"]
      url = params["photo_url"]
      $redis.hmset("deck:#{id}",
                          "question", question,
                          "url", url)
      $redis.lpush("deck_id", id)
      redirect('/show_deck')
    end

    get('/show_deck/:id') do
      puts params
      @deck = params[:id]
      render(:erb, :show_deck, {:layout => :default})
    end

    # add comments where code breaks
    post('/show_deck') do
      id = $redis.incr("deck_id")
      question = params["question"]
      url      = params["url"]
      $redis.hmset("deck:#{id}",
                      "question", question,
                      "url", url)
      $redis.lpush("deck_ids", id)
      redirect("/show_deck/#{id}")
    end

    post("/profiles/new") do
      first_name = params["first_name"]
      last_name =  params["last_name"]
      url = params["photo_url"]
      $redis.hmset("profile:#{username}",
                          "first_name", first_name,
                          "last_name", last_name,
                          "url", url)
      $redis.lpush("profiles", username)
      redirect(:erb, :new)
    end

    get("/profiles/:username") do
      puts params
      @username = profiles(params[:username])
      @profile = $redis.hgetall("profile:#{@username}")
      render(:erb, :new, {:layout => :default})
    end

    get("/my_profile") do
      @my_profile = profile(params[:username].downcase)
    redirect("/profiles/:username")
    end

    get("/home") do
      render(:erb, :flipdeck, {:layout => :default})
    end

    get("/cards") do
      all_decks = $redis.lrange("deck", 0, -1)
      @each_deck = all_decks.map do |deck|
        $redis.hgetall("deck#{id}")
      render(:erb, :newsfeed, {:layout => :default})
    end

    post("/cards") do
      id = $redis.incr("deck_id")
      question = params["question"]
      url = params["photo_url"]
        $redis.hmset("deck:#{id}",
                        "question", question,
                        "url", url)
      $redis.lpush("decks", id)
      redirect("/cards")
    end

  end
 end
end

