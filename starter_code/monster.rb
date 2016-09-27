# Monster class
  # getters and setters for instance variables

  # class variable for count

  # class instance variable for class description

  # class method getter for @@count class variable

  # class method getter for @class_description class instance variable

  # initial behavior

  # habitat? instance method

  # get_dangerous instance method

  # fight class method

# Zombie class

  # zombie version of class_description

  # initial behavior and values

# Werewolf class

  # werewolf version of class_description

  # initial behavior and values

  # update_threat_level instance method

# Flying module

  #fly method

# Vampire class

  # vampire class description

  # Flying module included


class Monster
  attr_accessor :habitat, :threat_level, :name
  @@count=0

  def initialize(name, threat_level = :medium)
    @threat_level = threat_level
    @name = name
    @@count += 1
    p "Rawr"
    p "#{@@count} monsters now roam the world!"
  end

  def self.count
    @@count
  end

  def habitat?(test)
    test == @habitat
  end

  def self.fight(monster, other_monster)
    threats = [:low, :medium, :high, :midnight]
    if threats.index(monster.threat_level) > threats.index(other_monster.threat_level)
      monster
    else
      other_monster
    end
  end

  def get_dangerous
    # ruby version of a switch statement is case
    case @threat_level
      when :low
        @threat_level = :medium
      when :medium
        @threat_level = :high
      when :high
        @threat_level = :midnight
      when :midnight
        :midnight
    end
  end

end









#
# dracula = Monster.new('Dracula', :high)
# dracula.habitat = "Transylvania"
# p dracula.habitat
# p dracula.threat_level
# p dracula.habitat?("Transylvania")
# p dracula.name
# puts "-----------"
# teletubby = Monster.new('Teletubby')
# p teletubby.threat_level
#
# p Monster.fight(dracula, teletubby)
