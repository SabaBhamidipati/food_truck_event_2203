class Event
attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map { |truck| truck.name }
  end

  def food_trucks_that_sell(item)
    arr = []
    @food_trucks.find_all do |truck|
      truck.inventory.each do |items, quantity|
        if items == item
          arr << truck
        end
      end
    end
    arr
  end

  def sorted_item_list
    arr = []
    @food_trucks.find_all do |truck|
      truck.inventory |item, quantity|
      # require "pry"; binding.pry
      arr << item
    end
    arr.uniq
  end
end
