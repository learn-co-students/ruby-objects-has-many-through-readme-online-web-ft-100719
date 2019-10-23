class Customer

  attr_accessor :name, :age #customers can change name and age

  @@all=[] #tracks all instances of customers created/......

  def initialize(name, age)# each customer has name and age
    @name=name#name and age are set at initialization
    @age=age
    @@all << self#.... /at initialization
  end


  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)# instead of setting customer, we set self, because we're passing in self as a reference to the current instance of customer
  end

  def meals
    Meals.all.select do |meal|
      meal.customer == self
    end 
  end



end
