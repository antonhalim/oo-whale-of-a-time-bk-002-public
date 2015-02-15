class Calf
  require 'pry'

  attr_accessor :mother, :lbs_of_milk


  def initialize(mother)
    @mother = mother
    @lbs_of_milk = 0
  end

  def hungry?
    if @lbs_of_milk < 100
      true
    else
      false
    end
  end

  def drink_milk
    if hungry? == true && mother.lbs_of_milk > 50
      mother.lbs_of_milk -= 50
      self.lbs_of_milk += 50
      "nom nom nom..."
    elsif mother.lbs_of_milk < 50
      "wish I could"
    else
      "No way I'm stuffed!"
    end
  end
end
