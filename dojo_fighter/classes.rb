

class Fighter
    attr_accessor :name, :strength, :defense, :luck, :health

    def initialize(name)
        @name = name
        @luck = rand(50)
        @health = 50
        @defense = 20
        @strength = rand(25)
    end 

    def damage(value)
        @health -= value
    end
   
    def attack(opponent)
        puts "working"
        if luck >= @defense
            puts "You hit #{opponent.name} for #{@strength}"
            
            opponent.damage(@strength)
        else
            puts "Ran away"
        end
    end
end

class Dojo
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "Feeling stronger already"
    end 

    def self.endurance_training(fighter)
        fighter.defense += 1
    end

    def self.coin_in_fountain(fighter)
        fighter.luck += 1
    end
    
end

