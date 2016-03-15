class Game
  def start
    puts ""
    puts ""
    puts "bouncer.rb v1.0345"
    puts "-" * 20
    sleep(0.8)
    puts "---Welcome to the age identifier!!---"
    puts "-----any key to start or (q)uit?-----"
    @play = gets.chomp

      while @play != 'q' do
        print "How old are you?"
        print ">"
        @choice = gets.chomp.to_i
        if @choice >= 1 && @choice < 18
          puts "You can do nothing"
          sleep (0.5)
          puts "restarting...."
          sleep (0.5)
          Game.new.start
        elsif @choice >= 18 && @choice < 21
          puts "You can vote"
          puts "You can smoke"
          sleep (0.5)
          puts "restarting...."
          sleep (0.5)
          Game.new.start
        elsif @choice >= 21 && @choice < 25
          puts "You can drink"
          puts "You can vote"
          puts "You can smoke"
          sleep (0.5)
          puts "restarting...."
          sleep (0.5)
          Game.new.start
        elsif @choice > 25
          puts "You can rent a car"
          puts "You can drink"
          puts "You can vote"
          puts "You can smoke"
          sleep (0.5)
          puts "restarting...."
          sleep (0.5)
          Game.new.start
        elsif @choice.to_s == "q"
          puts "See ya later!"
          exit
        else
          puts "Invalid answer"
          puts "Do you not know your own age?"
          sleep (0.5)
          puts "restarting...."
          sleep (0.5)
          Game.new.start
        end
      end
  end
end

Game.new.start
