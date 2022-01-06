class Person
  def feeling_at(outside_temp)
    if outside_temp > 20
      "Warm"
    else
      "Cold"
    end
  end
end

class Shirt
  def initialize(person)
    @person = person
  end

  def feeling_at(outside_temp)
    if outside_temp >= 30
      "Going for a swim"
    else
      @person.feeling_at(outside_temp)
    end
  end
end

class Coat
  def initialize(person)
    @person = person
  end

  def feeling_at(outside_temp)
    if outside_temp >= 35
      "Crazy hot"
    else
      @person.feeling_at(outside_temp)
    end
  end
end

outside_temp = 30

joe = Person.new
puts joe.feeling_at(outside_temp)
joe_shirt = Shirt.new(joe)
puts joe_shirt.feeling_at(outside_temp)
joe_coat = Coat.new(joe_shirt)
puts joe_coat.feeling_at(outside_temp)
