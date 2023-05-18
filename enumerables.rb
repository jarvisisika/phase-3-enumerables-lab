def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  ]
end

# Solution for the 'get_names' method
def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

# Solution for the 'spiciest_foods' method
def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end

# Solution for the 'print_spicy_foods' method
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

# Solution for the 'get_spicy_food_by_cuisine' method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

# Solution for the 'sort_by_heat' method
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food| food[:heat_level] }
end

# Solution for the 'print_spiciest_foods' method
def print_spiciest_foods(spicy_foods)
  spiciest = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest)
end

# Solution for the 'average_heat_level' method
def average_heat_level(spicy_foods)
  total_heat = spicy_foods.sum { |food| food[:heat_level] }
  total_heat / spicy_foods.length
end
