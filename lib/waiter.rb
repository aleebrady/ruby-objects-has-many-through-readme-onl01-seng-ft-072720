class Waiter 
  attr_accessor :name, :yrs_experience 
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name 
    @yrs_experience = yrs_experience
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(customer, self, total, tip)
  end


end