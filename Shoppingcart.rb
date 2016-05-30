require 'date'

$weekday = Time.new.wday

class ShoppingCart

  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout

    @total = @items.inject(0) do |s, i|

      s + i.price
    end

    (@items.count > 5) ? @total *= 0.90 : @total

    puts "Your total today is #{sprintf('%.2f', @total)}€. Have a nice day!"

  end
end

class Item

  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price.round(2)
  end
end

class Houseware < Item

  def price
    # If the price is greater than 100€ then will be a 5% discount in houseware department
    (@price > 100) ? @price *= 0.95 : @price
  end
end

class Fruit < Item

  def price
    # Only on weekends they have a 10% discount in fruit department
    ($weekday >= 6) ? @price *= 0.95 : @price
  end
end

joshs_cart  = ShoppingCart.new
banana      = Fruit.new('Banana', 10)
vaccuum     = Houseware.new('Vaccuum', 150)
oj          = Item.new('Orange Juice', 10)
rice        = Item.new('Rice', 1)
anchovies   = Item.new('Anchovies', 2)

joshs_cart.add_item(banana)
joshs_cart.add_item(rice)
joshs_cart.checkout
