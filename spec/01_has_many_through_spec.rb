class Customer
  attr_accessor :name, :age

  @@all = []

  def initailize(name, age)
   @name = name
   @age = age 
   @@all << self
   end

   def self.all
     @@all
   end

   def new_meal(waiter, total, tip=0)
     meal.new(waiter, self, total, tip)
   end

   def meals
      meal.all.select do |meal|
       meal.customer == self
     end
   end

   def waiter
     meal.map do |meal|
       meal.waiter
   end
   end

   
end


class Waiter
 
 attr_accessor :name, :yrs_experience

  @@all = []

  def initailize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
 end

 def new_meal(customer, total, tip=0)
    meal.new(self, customer, total, tip)
 end

 def meals
   meal.all.select do |meal|
    meal.waiter == self
   end
 end 

 def best_tipper
   best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal._b.tip
 end
    best_tipped_meal.customer
   end

end


class Meal
  attr_accessor :waiter, :customer, :total, :tip

  @@all = []

  def initailize(waiter, customer, total, tip=0 )
     @waiter = waiter
    @customer = customer
   @total = total
   @tip = tip
   @@all << self
  end 
  
  def self.all
    @@all
  end

end


