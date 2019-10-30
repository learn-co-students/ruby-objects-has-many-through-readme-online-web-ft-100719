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