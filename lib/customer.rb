class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name,age)
    @name = "name"
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    customer = self.new(name, age)
    new_waiter = waiter.new(name, yrs_experience)
    customer.new_meal(new_waiter, total, tip)
  end

  def meals
    Meal.all.map {|meals| meals.customer == self}
  end

   def waiters
     meals.map {|meals| meals.waiters}
   end

end
