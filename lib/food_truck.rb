class FoodTruck
attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(thing)
    @inventory[thing]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  def potential_revenue
    arr = []
    inventory.each do |item, quantity|
      arr << item.price * quantity
    end
    # require "pry"; binding.pry
    arr.sum
  end
end
