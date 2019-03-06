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

item1 = Item.create(restaurant: res1, category: cat1, name: "Lamb Spring Roll Ground", image:"https://fastly.4sqi.net/img/general/600x600/_UEzyTxbr_on-RQhzrDmTzk-Kn6M7rl6wRKZuSjswWA.jpg", description: "lamb, chili, coriander, cucumber raita", price: "7", likes: 0, dislikes: 0)
item2 = Item.create(restaurant: res1, category: cat3, name: "Naan", image:"https://cdn.thepitchkc.com/files/base/scomm/kcp/image/2012/07/960w/img_1548.jpg", description: "garlic/onion/cilantro/cheese/coconut", price: "3.5", likes: 0, dislikes: 0)
item3 = Item.create(restaurant: res1, category: cat6, name: "Chicken Tikka Masala", image:"https://media-cdn.tripadvisor.com/media/photo-s/05/2a/97/ea/seva-cuisine-of-india.jpg", description: "Clay oven cooked white meat, tomato light cream sauce", price: "13.95", likes: 0, dislikes: 0)
item4 = Item.create(restaurant: res1, category: cat6, name: "Chicken Korma", image:"https://s3-media4.fl.yelpcdn.com/bphoto/jPpPTEGVM4xfsHv9BORwVg/o.jpg", description: "Almond and cashew nut sauce, yogurt, coconut", price: "13.95", likes: 0, dislikes: 0)
item5 = Item.create(restaurant: res1, category: cat6, name: "Lamb Vindaloo", image:"https://s3-media1.fl.yelpcdn.com/bphoto/0gk_qOFce-5dfgifDryndg/ls.jpg", description: "Fiery sauce, sundried Kashmiri red chili, potato, tamarin", price: "14.95", likes: 0, dislikes: 0)
item6 = Item.create(restaurant: res1, category: cat6, name: "Lamb Korma", image:"https://s3-media4.fl.yelpcdn.com/bphoto/jPpPTEGVM4xfsHv9BORwVg/o.jpg", description: "Almond and cashew nut sauce, yogurt, coconut", price: "14.95", likes: 0, dislikes: 0)

item7 = Item.create(restaurant: res2, category: cat1, name: "Angel Marinated Chicken Wings", image:"https://i.ytimg.com/vi/R2qqTYnXCbY/maxresdefault.jpg", description: "Golden-fried chicken wings served with sweet chili sauce", price: "7", likes: 0, dislikes: 0)
item8 = Item.create(restaurant: res2, category: cat1, name: "Calamari Todd Krob", image:"https://cdn.shopify.com/s/files/1/1127/6786/products/calamari_fried_grande.jpg?v=1527182611", description: "Served with chili dipping sauce", price: "8", likes: 0, dislikes: 0)
item9 = Item.create(restaurant: res2, category: cat1, name: "Crab Rangoon", image:"https://andrewzimmern.com/wp-content/uploads/2017/01/Crab-rangoon-web-865x607.gif", description: "crabmeat with cream cheese in crispy wonton served with spicy and sweet chili sauce", price: "6", likes: 0, dislikes: 0)
item10 = Item.create(restaurant: res2, category: cat2, name: "Tom Yum Soup (Spicy Lemongrass)", image:"http://aromasian.com/wp-content/uploads/2017/06/thai-tom-yum-milky-soup-1.jpg", description: "Vegetable broth with onion, bell pepper, mushroom", price: "9", likes: 0, dislikes: 0)
item11 = Item.create(restaurant: res2, category: cat6, name: "Spicy Basil Noodle", image:"https://highheelgourmet.files.wordpress.com/2013/07/authentic-thai-pad-kee-mao-spicy-drunken-noodles-by-the-high-heel-gourmet-1.jpg", description: "stir-fried broad flat noodle with onion, bell pepper, egg in spicy basil sauce", price: "10", likes: 0, dislikes: 0)

item12 = Item.create(restaurant: res3, category: cat6, name: "Margarita Pizza", image:"https://static01.nyt.com/images/2014/04/09/dining/09JPPIZZA2/09JPPIZZA2-articleLarge.jpg", description: "Fresh mozzarella, tomato, garlic, basil and olive oil.", price: "24.95", likes: 0, dislikes: 0)
item13 = Item.create(restaurant: res3, category: cat2, name: "Greek Salad Special", image:"https://www.cookingclassy.com/wp-content/uploads/2018/02/greek-salad-4.jpg", description: "Romaine, black olives, tomatoes, cucumbers, red onions and feta cheese.", price: "7.95", likes: 0, dislikes: 0)
item14 = Item.create(restaurant: res3, category: cat6, name: "Penne Vodka Sauce Pizza", image:"https://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/2016_10_13_myrecipes_1856-1.jpg?itok=L-ELRrHG", description: "Fresh mozzarella and vodka sauce.", price: "21.95", likes: 0, dislikes: 0)
item15 = Item.create(restaurant: res3, category: cat6, name: "Buffalo Chicken Pizza", image:"http://www.recipe4living.com/assets/itemimages/400/400/3/default_b80cb1136c8df3231081ef7be77f6b5e_dreamstime_s_72308853.jpg", description: "Chicken, cheddar, hot sauce and bleu cheese.", price: "24.95", likes: 0, dislikes: 0)
item16 = Item.create(restaurant: res3, category: cat3, name: "Garlic Knots", image:"https://www.dinneratthezoo.com/wp-content/uploads/2017/12/garlic-knots-4.jpg", description: "Garlic-y Dough tied like a bow!", price: "1.50", likes: 0, dislikes: 0)


Comment.create(content: "Great food. This dish is the best here.", item: item1, user: user1)
Comment.create(content: "Hated this dish!!!! You'd be better off with something else.", item: item2, user: user2 )
Comment.create(content: "Great food. This dish is the best here.", item: item7, user: user3)
Comment.create(content: "Great food. This dish is the best here.", item: item14, user: user4)
