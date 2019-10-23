class Customer
    attr_accessor :meals, :waiter
    attr_reader :name, :age
    @@all=[]

    def initialize(name, age)
        @name=name
        @age=age
        @@all<< self
    end

    def self.all
        @@all
    end

    def new_meal(waiters,total,tip)
        Meal.new(waiters,self,total,tip)
    end

    def meals
        Meal.all.select{|meal| meal.customer==self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end

end