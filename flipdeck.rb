module Questions

   QUESTIONS = [
    FAMILY = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "What's the clearest memory that you have from your childhood?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "Where's your family from?"]}
          ],
    LOVE = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "How has your experience dating affected the way that you love?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "Do you have a type?"]}
          ],
    ADVICE = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "What's the best advice you would give yourself if you could go 10 years into the past?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "What would you recommend for someone wanting to break into you industry?"]}
          ],
    DREAMS = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "e doing something else with your life, what would it be?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "What was your childhood dream?"]}
          ],
    CURRENT = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "How do you feel about the recent events in Ferguson?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
           "What do you think about what Obama has done in the last 8 years?"]}
        ],
    RANDOM = [
      {:image_url => 'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg'},
      {:question_1 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "Do you think that Kanye West and Kim K. will last?"]},
      {:question_2 => [
          'http://images.soulpancake.s3.amazonaws.com/jimMorrison_thumb_thumb.jpg',
          "What would you name your first child?"]}
        ]
  ]

  @questions = QUESTIONS.shuffle

end
