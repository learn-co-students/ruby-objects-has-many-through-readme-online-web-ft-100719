class Waiter
    attr_accessor :customer, :meal
    attr_reader :name, :years_experience
    @@all=[]

    def initialize(name,years_experience)
        @name=name
        @years_experience=years_experience
        @@all<< self
    end

    def self.all
        @@all
    end

    def new_meal(customers,total,tip)
        Meal.new(self,customers,total,tip)
    end

    def meals
        Meal.all.select{|meal| meal.waiter==self}
    end

    def best_tipper
        meals.max{|a,b| a.tip<=>b.tip}.customer
    end



end