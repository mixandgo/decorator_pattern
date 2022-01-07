# lib/02_modules.rb
class Pizza
  def cost = 2.0

  def foo = "foo"
end

module Onions
  def cost = super + 1.0
end

module Cheese
  def cost = super + 2.2
end

# We can only extend the object once.
pizza = Pizza.new
pizza.extend(Onions)
pizza.extend(Cheese)

puts "Your pizza costs: #{pizza.cost}"
puts "Class: #{pizza.class}"