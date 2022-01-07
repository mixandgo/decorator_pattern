# lib/03_method_missing.rb
module Decorator
  def initialize(component)
    @component = component
  end

  def method_missing(meth, *args)
    if @component.respond_to?(meth)
      @component.send(meth, *args)
    else
      super
    end
  end

  def respond_to?(meth)
    @component.respond_to?(meth)
  end
end

class Coffee
  def cost
    2
  end

  def origin
    "Colombia"
  end
end

class Milk
  include Decorator

  def cost
    @component.cost + 0.4
  end
end

coffee = Coffee.new
puts "Americano (#{coffee.origin}): $#{coffee.cost}"
latte = Milk.new(coffee)
puts "Latte (#{latte.origin}): $#{latte.cost}"
puts "Class: #{latte.class}"
