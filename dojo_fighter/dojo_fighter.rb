require "./classes.rb"

puts "Welcome to my Dojo, What is your name?"
name = gets #gets is a method, waits for input from console.

player = Fighter.new(name)
scorpion = Fighter.new("Scorpion")
# puts Player.health
# puts Player.name

puts "A long time ago, Scorpion vowed to destory every opponent that came to train in his Dojo, he was determined to be the best, \n
and to be the best, one must annihilate the best! "

1.times do 
    puts "What training will you do today?"
    input = gets.chomp
    if input == "strength"
        Dojo.lift_weights(player)
        puts "ahh"
    end
end

while true do 
    puts "Do you want to [fight] or [run]?"
    input = gets.chomp
    # puts "#{Player.fight(Scorpion)}"
    puts input
    if input == "fight" 
        puts "chose to fight"
        #player wants to fight Scorpion "poor him/her"
        player.attack(scorpion)
        scorpion.attack(player)
        # Scorpion.fight(Player)
        
    end
    if input == "run"
        puts "run bitch"
       if rand(100) > 60
            puts "No fight tonight"
           
       else
            puts "Fail to run!"
       end
    end
    if player.health <= 0
        puts "#{player.name} has been Annihilated! "
        
    end
    if scorpion.health <= 0
        puts "Scorpion fatality, you win!"
        
    end
    puts "Scorpion's Life: #{scorpion.health}\n #{player.name}'s Life: #{player.health}"
end

