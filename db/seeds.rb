# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Comment.destroy_all
Item.destroy_all
User.destroy_all
Category.destroy_all

user1 = User.create(username:"anik", password:"123")
user2 = User.create(username:"pat", password:"123")
user3 = User.create(username:"joel", password:"123")
user4 = User.create(username:"sam", password:"123")

cat1 = Category.create(name:"Appetizers")
cat2 = Category.create(name:"Soups & Salads")
cat3 = Category.create(name:"Breads")
cat4 = Category.create(name:"Drinks")
cat5 = Category.create(name:"Dessert")
cat6 = Category.create(name:"Entrées")


res1 = Restaurant.create(name: "Seva", address: "30-07 34th St, Astoria, NY 11103")
res2 = Restaurant.create(name: "Spicy Shallot", address: "7701 Woodside Ave, Queens, NY")
res3 = Restaurant.create(name: "Front Street Pizza", address: "80 Front St, Brooklyn, NY 11201")

item1 = Item.create(restaurant: res1, category: cat1, name: "Lamb Spring Roll Ground", description: "lamb, chili, coriander, cucumber raita", price: "7", likes: 0, dislikes: 0)
item2 = Item.create(restaurant: res1, category: cat3, name: "Naan", description: "garlic/onion/cilantro/cheese/coconut", price: "3.5", likes: 0, dislikes: 0)
item3 = Item.create(restaurant: res1, category: cat6, name: "Chicken Tikka Masala", description: "Clay oven cooked white meat, tomato light cream sauce", price: "13.95", likes: 0, dislikes: 0)
item4 = Item.create(restaurant: res1, category: cat6, name: "Chicken Korma", description: "Almond and cashew nut sauce, yogurt, coconut", price: "13.95", likes: 0, dislikes: 0)
item5 = Item.create(restaurant: res1, category: cat6, name: "Lamb Vindaloo", description: "Fiery sauce, sundried Kashmiri red chili, potato, tamarin", price: "14.95", likes: 0, dislikes: 0)
item6 = Item.create(restaurant: res1, category: cat6, name: "Lamb Korma", description: "Almond and cashew nut sauce, yogurt, coconut", price: "14.95", likes: 0, dislikes: 0)

item7 = Item.create(restaurant: res2, category: cat1, name: "Angel Marinated Chicken Wings", description: "Golden-fried chicken wings served with sweet chili sauce", price: "7", likes: 0, dislikes: 0)
item8 = Item.create(restaurant: res2, category: cat1, name: "Calamari Todd Krob", description: "Served with chili dipping sauce", price: "8", likes: 0, dislikes: 0)
item9 = Item.create(restaurant: res2, category: cat1, name: "Crab Rangoon", description: "crabmeat with cream cheese in crispy wonton served with spicy and sweet chili sauce", price: "6", likes: 0, dislikes: 0)
item10 = Item.create(restaurant: res2, category: cat2, name: "Tom Yum Soup (Spicy Lemongrass)", description: "Vegetable broth with onion, bell pepper, mushroom", price: "9", likes: 0, dislikes: 0)
item11 = Item.create(restaurant: res2, category: cat6, name: "Spicy Basil Noodle", description: "stir-fried broad flat noodle with onion, bell pepper, egg in spicy basil sauce", price: "10", likes: 0, dislikes: 0)

item12 = Item.create(restaurant: res3, category: cat6, name: "Margarita Pizza", description: "Fresh mozzarella, tomato, garlic, basil and olive oil.", price: "24.95", likes: 0, dislikes: 0)
item13 = Item.create(restaurant: res3, category: cat2, name: "Greek Salad Special", description: "Romaine, black olives, tomatoes, cucumbers, red onions and feta cheese.", price: "7.95", likes: 0, dislikes: 0)
item14 = Item.create(restaurant: res3, category: cat6, name: "Penne Vodka Sauce Pizza", description: "Fresh mozzarella and vodka sauce.", price: "21.95", likes: 0, dislikes: 0)
item15 = Item.create(restaurant: res3, category: cat6, name: "Buffalo Chicken Pizza", description: "Chicken, cheddar, hot sauce and bleu cheese.", price: "24.95", likes: 0, dislikes: 0)
item16 = Item.create(restaurant: res3, category: cat3, name: "Garlic Knots", description: "Garlic-y Dough tied like a bow!", price: "1.50", likes: 0, dislikes: 0)


Comment.create(content: "Great food. This dish is the best here.", item: item1, user: user1)
Comment.create(content: "Hated this dish!!!! You'd be better off with something else.", item: item2, user: user2 )
Comment.create(content: "Great food. This dish is the best here.", item: item7, user: user3)
Comment.create(content: "Great food. This dish is the best here.", item: item14, user: user4)
