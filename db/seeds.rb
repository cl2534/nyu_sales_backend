# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chang = User.create(name: 'Chang', email:'cl2534@nyu.edu', password: 'chang', location: 'Brooklyn, NY')
isaac = User.create(name: 'Issac', email: 'issac@nyu.edu', password: 'isaac', location: 'NY')
risher = User.create(name: 'Risher', email: 'risher@nyu.edu', password: 'risher', location: 'NY')
# wolfy = User.create(name: 'Wolfy', location: 'NY')
# jee = User.create(name: 'Jee', location: 'Wellesley')
# sandy = User.create(name: 'Sandy', location: 'Jersey City, NJ')
# shing = User.create(name: 'Shing', location: 'Brooklyn, NY')
# sree = User.create(name: 'Sree', location: 'Jersey City, NJ')
# laura = User.create(name: 'Laura', location: 'NY')
# devin = User.create(name: 'Devin', location: 'NY')
# mina = User.create(name: 'Mina', location: 'NY')
# jarret = User.create(name: 'Jarret', location: 'NY')
# brad = User.create(name: 'Brad', location: 'NY')
# noah = User.create(name: 'Noah', location: 'NY')
# sarah = User.create(name: 'Sarah', location: 'NY')
# mary = User.create(name: 'Mary', location: 'NY')
# alex = User.create(name: 'Alex', location: 'NY')
# #




salecategory1 = SaleCategory.create(name: 'Furniture')
salecategory1 = SaleCategory.create(name: 'Clothing')
salecategory1 = SaleCategory.create(name: 'Textbook')


salepost1 = SalePost.create(name: 'T-shirt for sale', picture_url: 'https://image.dhgate.com/0x0/f2/albu/g6/M00/5E/C0/rBVaR1rYopaAW3oVAAC5xf2a2GA627.jpg',  user_id: 1)
salepost2 = SalePost.create(name: 'Jean for sale', picture_url: 'https://forthemommas.com/wp-content/uploads/2014/02/jeans1.jpg',  user_id: 1)
salepost3 = SalePost.create(name: 'Bomber jacket for sale', picture_url: 'https://www.legendaryusa.com/thumbnail.asp?file=assets/images/Z21P007A.jpg&maxx=600&maxy=0',  user_id: 1)
salepost4 = SalePost.create(name: 'Econometrics Textbook for sale', picture_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNyYjLMT7n9ZCXR-tEGkn5tync_WQ98xGRj24L164xJwQGA53f',  user_id: 1)
salepost5 = SalePost.create(name: 'Data Structure Textbook for sale for sale', picture_url: 'https://images-na.ssl-images-amazon.com/images/I/51iW0u2RXdL.jpg',  user_id: 1)
salepost6 = SalePost.create(name: 'Couch for sale', picture_url: 'https://www.furniturerow.com/fr/images/products/SS-PKRNCH.JPG',  user_id: 1)



# # salepost1 = SalePost.create(name)
# jeans = Style.create(name: 'Jeans', style_pic_link: "http://www.joesjeans.com/Media/JOES/homepage/premium-womens-denim-and-jeans.jpg")
