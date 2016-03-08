  def get_response(message)
    puts message
    print ">"
    gets.chomp
  end

  puts "bouncer.rb v1.0345"
  puts "-" * 20

  choice = get_response ("Hello, How old are you? (Press 'Q' to quit)")

  while choice != "q" do
  choice = get_response ("Hello, How old are you? (Press 'Q' to quit)")

  if choice.to_i >=1 && choice.to_i <18
    puts "You can do nothing"
  end

  if choice.to_i >=18 && choice.to_i <21
    puts "You can vote"
    puts "You can smoke"
  end

  if choice.to_i >=21 && choice.to_i <25
    puts "You can drink"
  end

  if choice.to_i >25
    puts "You can rent a car"
  end
  end
