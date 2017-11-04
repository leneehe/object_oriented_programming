class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eat_at
    if @meal_time < 12
        if @meal_time == 0
          @meal_time += 12
        end
        return "#{@meal_time} AM"
    elsif @meal_time == 12
        return "#{@meal_time} PM"
    end
        return "#{@meal_time - 12} PM"
  end

  def meow
    "I am your lord, #{@name}. Kneel before me human! Your job will be prepare #{@preferred_food} for me at #{eat_at}."
  end

end

cici = Cat.new("Cici", "can food", 12)
ginger = Cat.new("Ginger", "tuna", 9)

puts cici.meow
puts ginger.meow
