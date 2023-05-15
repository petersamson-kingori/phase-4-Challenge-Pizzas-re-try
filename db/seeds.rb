# db/seeds.rb

# Delete existing records
RestaurantPizza.delete_all
Pizza.delete_all
Restaurant.delete_all

# Create restaurants
sottocasa = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzarte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Create pizzas
margherita = Pizza.create(name: "Margherita", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# Create restaurant-pizza associations with price
RestaurantPizza.create(restaurant: sottocasa, pizza: margherita, price: 15)
RestaurantPizza.create(restaurant: sottocasa, pizza: pepperoni, price: 18)
RestaurantPizza.create(restaurant: pizzarte, pizza: margherita, price: 20)
