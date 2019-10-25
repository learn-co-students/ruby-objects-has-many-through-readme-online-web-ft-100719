class Meal

    attr_accessor :waiter, :customer, :total, :tip
    @@all = []

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

    def meals
        Meal.all.select { |meal| meal.waiter == self }
    end
    
    def best_tipper
        best_tipped_meal = meals.max { |meal_a, meal_b| meal_a.tip <=> meal_b.tip }
        best_tipped_meal.customer
    end

end