class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize 
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    until @mass_kg > 0
      puts "Error: your planet's mass must be greater than 0. Please input the planet's weight in kg again:"
      @mass_kg = gets.chomp.to_i
    end 
    until @distance_from_sun_km > 0
      puts "Your planet's distance from the sun must be greater than 0. Please input the planet's distance from the sun in km again:"
      @distance_from_sun_km = gets.chomp.to_i
    end
  end
  
  def summary 
    return "The planet #{self.name} is #{self.color} in color with a mass of #{self.mass_kg} kg, orbiting an average of #{self.distance_from_sun_km} km from the sun. A crazy thing about this planet is: #{self.fun_fact}."
  end 
end