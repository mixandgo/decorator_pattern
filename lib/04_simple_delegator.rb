# lib/04_simple_delegator.rb
require "delegate"

class Coffee
  def cost = 2

  def origin = "Colombia"
end

class Milk < SimpleDelegator
  def initialize(coffee)
    @coffee = coffee
    super
  end

  def class = __getobj__.class

  def cost = @coffee.cost + 0.4
end

coffee = Coffee.new
puts "Americano (#{coffee.origin}): $#{coffee.cost}"
latte = Milk.new(coffee)
puts "Latte (#{latte.origin}): $#{latte.cost}"
puts "Class: #{latte.class}"
