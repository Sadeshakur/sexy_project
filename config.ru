require 'redis'
require 'pry'
require 'httparty'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'
require_relative 'flipdeck'
require 'facebook_oauth'

run Flipdeck::Server
