class Whale
  require 'pry'

  attr_reader :name
  attr_accessor :calves, :lbs_of_milk, :lbs_of_krill

  def initialize(name)
    @name = name
    @calves = []
    @lbs_of_milk = 120
    @lbs_of_krill = 0
  end

  def hungry?
    if self.lbs_of_krill < 2000
      true
    else
      false
    end
  end

  def give_birth
      @calves << Calf.new(self)
  end

  def adopt_calf(orphan)
      @calves  << orphan
      orphan.mother = self
  end

  def feed_calf(calf)
    if calf.hungry? == true && self.lbs_of_milk >50
      calf.lbs_of_milk += 50
      self.lbs_of_milk -= 50
    elsif self.lbs_of_milk < 50
      "not enough milk"
    elsif calf.hungry? == false
      "calf isn't hungry"
    end
  end










end
