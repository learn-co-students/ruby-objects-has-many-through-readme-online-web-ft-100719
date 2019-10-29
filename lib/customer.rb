class Customer
  attr_accessor :name :age
  @@all=[ ]
  def initialize (name,age)
    @name = name
    @age = age
  end
  
  def self.all
    @@all
  end
end
def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end