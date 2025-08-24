# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create sample recipe data
puts "Creating sample recipe data..."

Recipe.find_or_create_by(title: "Cheesy Tater Tot Casserole") do |recipe|
  recipe.image_url = "https://images.unsplash.com/photo-1574484284002-952d92456975?w=800&h=600&fit=crop"
  recipe.ingredients = <<~INGREDIENTS
    2 lbs ground beef
    1 bag (32 oz) frozen tater tots
    1 can (10.75 oz) cream of mushroom soup
    2 cups shredded cheddar cheese
    1 medium onion, diced
    1 cup frozen mixed vegetables (optional)
    1/2 cup sour cream
    Salt and pepper to taste
    1 tsp garlic powder
    1/2 tsp paprika
  INGREDIENTS

  recipe.instructions = <<~INSTRUCTIONS
    1. Preheat oven to 350°F (175°C).
    2. In a large skillet, brown the ground beef over medium-high heat, breaking it up as it cooks.
    3. Add diced onion to the beef and cook until onion is translucent, about 5 minutes.
    4. Season with salt, pepper, and garlic powder.
    5. Stir in the cream of mushroom soup and sour cream until well combined.
    6. Add frozen mixed vegetables if using, and mix well.
    7. Transfer the beef mixture to a greased 9x13 inch baking dish.
    8. Arrange the frozen tater tots in a single layer over the beef mixture.
    9. Sprinkle the shredded cheese evenly over the tater tots.
    10. Sprinkle paprika over the cheese for color.
    11. Bake for 30-35 minutes, or until tater tots are golden brown and crispy.
    12. Let cool for 5 minutes before serving.
    13. Serve hot and enjoy!
  INSTRUCTIONS
end

puts "Sample recipe created successfully!"
puts "Recipe count: #{Recipe.count}"
