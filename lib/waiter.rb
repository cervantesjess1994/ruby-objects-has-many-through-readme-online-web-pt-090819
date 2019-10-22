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

  def new_meal(customer, total, tip)
    self.new(customer, total, tip)
  end

  def meals
    Meal.all.map {|meals| meals.waiter == self}
   end

   def best_tipper
    # best_tipper =[]
    # meals.map{|meals| meals.tip}
    # best_tipper.to_a_max

  #  best_tipped_meal = meals.max do |meal_a, meal_b|
  #    meal_a.tip <=> meal_b.tip
   end
 end
