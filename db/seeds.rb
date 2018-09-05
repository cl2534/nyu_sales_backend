# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# chang = User.create(name: 'Chang', email:'cl2534@nyu.edu', password: 'chang', location: 'Brooklyn, NY')
# isaac = User.create(name: 'Issac', email: 'issac@nyu.edu', password: 'isaac', location: 'NY')
# risher = User.create(name: 'Risher', email: 'risher@nyu.edu', password: 'risher', location: 'NY')
# wolfgang = User.create(name: 'Wolfgang', email:'wolfgang@nyu.edu', password: 'wolfgang', location: 'NY')
# jee = User.create(name: 'Jee', email:'jee@nyu.edu', password: 'jee', location: 'Wellesley College')
# sandy = User.create(name: 'Sandy', email: 'sandy@nyu.edu', password: 'sandy', location: 'Jersey City, NJ')
# # shing = User.create(name: 'Shing', location: 'Brooklyn, NY')
# # sree = User.create(name: 'Sree', location: 'Jersey City, NJ')
# # laura = User.create(name: 'Laura', location: 'NY')
# # devin = User.create(name: 'Devin', location: 'NY')
# # mina = User.create(name: 'Mina', location: 'NY')
# # jarret = User.create(name: 'Jarret', location: 'NY')
# # brad = User.create(name: 'Brad', location: 'NY')
# # noah = User.create(name: 'Noah', location: 'NY')
# # sarah = User.create(name: 'Sarah', location: 'NY')
# # mary = User.create(name: 'Mary', location: 'NY')
# # alex = User.create(name: 'Alex', location: 'NY')
#
#
#
#
# salecategory1 = SaleCategory.create(name: 'Beauty & Health')
# salecategory2 = SaleCategory.create(name: 'Pet Supplies')
# salecategory3 = SaleCategory.create(name: 'Books & Audible')
# salecategory4 = SaleCategory.create(name: 'Electronics, Computers & Office')
# salecategory5 = SaleCategory.create(name: 'Clothing, Shoes & Jewelry')
# salecategory6 = SaleCategory.create(name: 'Sports & Outdoors')
# salecategory7 = SaleCategory.create(name: 'Home & kitchen Supplies')
#
#
# #Clothing
# salepost1 = SalePost.create(name: 'T-shirt for sale', picture_url: 'https://image.dhgate.com/0x0/f2/albu/g6/M00/5E/C0/rBVaR1rYopaAW3oVAAC5xf2a2GA627.jpg',  user_id: 1)
# salepost2 = SalePost.create(name: 'Jean for sale', picture_url: 'https://forthemommas.com/wp-content/uploads/2014/02/jeans1.jpg',  user_id: 1)
# salepost3 = SalePost.create(name: 'Bomber jacket for sale', picture_url: 'https://www.legendaryusa.com/thumbnail.asp?file=assets/images/Z21P007A.jpg&maxx=600&maxy=0',  user_id: 1)
#
# # Books
# salepost4 = SalePost.create(name: 'Econometrics Textbook for sale', picture_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNyYjLMT7n9ZCXR-tEGkn5tync_WQ98xGRj24L164xJwQGA53f',  user_id: 1)
# salepost5 = SalePost.create(name: 'Data Structure Textbook for sale for sale', picture_url: 'https://images-na.ssl-images-amazon.com/images/I/51iW0u2RXdL.jpg',  user_id: 1)
#
# # Home & Kitchen Supplies
# salepost6 = SalePost.create(name: 'Couch for sale', picture_url: 'https://www.furniturerow.com/fr/images/products/SS-PKRNCH.JPG',  user_id: 1)
# salepost7 = SalePost.create(name: 'Kitchen Table for sale', picture_url: 'https://recycleannarbor.files.wordpress.com/2012/07/table_sari_arel.jpg',  user_id: 3)
#
# #Pet Supplies
# salepost8= SalePost.create(name: 'Dog Food for sale', picture_url: 'https://media.tractorsupply.com/is/image/TractorSupplyCompany/5138515?$470$',  user_id: 5)
# salepost9= SalePost.create(name: 'Cat Food for sale', picture_url: 'https://img.chewy.com/is/catalog/99962_MAIN._AC_SL1500_V1462999354_.jpg',  user_id: 2)
# salepost10= SalePost.create(name: 'Bird Food for sale', picture_url: 'https://i5.walmartimages.com/asr/c0415b79-c556-487a-981c-45a561524ab7_2.e574ba155c0e65c8b22e88decf85b23b.jpeg',  user_id: 3)
# salepost11= SalePost.create(name: 'Hamster Food for sale', picture_url: 'https://images-na.ssl-images-amazon.com/images/I/51mUqvpjnrL.jpg',  user_id: 4)
#
# #Health & Beauty
# salepost12= SalePost.create(name: 'Cleansing foam for sale', picture_url: 'https://s1.thcdn.com/productimg/600/600/11544672-4774516167473016.jpg',  user_id: 1)
salepost18= SalePost.create(name: 'Lipstick for sale', picture_url: 'https://www.maccosmetics.com/media/export/cms/products/640x600/mac_sku_S7P004_640x600_0.jpg',  user_id: 2)
#
# #Sports & Outdoor
# salepost14= SalePost.create(name: 'Football shoe for sale', picture_url: 'http://www.portraitsdescience.com/images//pic/eTJ1XaJc%20Nike.jpg',  user_id: 3)
# salepost15= SalePost.create(name: 'Swimming suit for sale', picture_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRpUGv82knynXNP8gPZW_r-wPM4cuez9x5E7ieGU2If6sOsmY',  user_id: 2)
#
# #Electronics, Computers & Office
# salepost16= SalePost.create(name: 'Used Macbook Air for sale', picture_url: 'https://brain-images-ssl.cdn.dixons.com/3/2/10165823/l_10165823_001.jpg',  user_id: 4)
# salepost17= SalePost.create(name: 'Bang & Olufsen for sale', picture_url: 'https://www.bhphotovideo.com/images/images2500x2500/b_o_play_by_bang_olufsen_1280346_beolit_17_bluetooth_speaker_1320901.jpg',  user_id: 5)
#
# #PostCategory
# #Clothing posts
# postcategory1 = PostCategory.create(sale_post_id: 1, sale_category_id: 5)
# postcategory2 = PostCategory.create(sale_post_id: 2, sale_category_id: 5)
# postcategory3 = PostCategory.create(sale_post_id: 3, sale_category_id: 5)
#
# # Book posts
# postcategory4 = PostCategory.create(sale_post_id: 4, sale_category_id: 3)
# postcategory5 = PostCategory.create(sale_post_id: 5, sale_category_id: 3)
#
# # Home supplies posts
# postcategory6 = PostCategory.create(sale_post_id: 6, sale_category_id: 7)
# postcategory7 = PostCategory.create(sale_post_id: 7, sale_category_id: 7)
#
# # Pet supplies posts
# postcategory8 = PostCategory.create(sale_post_id: 8, sale_category_id: 2)
# postcategory9 = PostCategory.create(sale_post_id: 9, sale_category_id: 2)
# postcategory10 = PostCategory.create(sale_post_id: 10, sale_category_id: 2)
# postcategory11 = PostCategory.create(sale_post_id: 11, sale_category_id: 2)
#
# # Health & beauty posts
# postcategory12 = PostCategory.create(sale_post_id: 12, sale_category_id: 1)
postcategory18 = PostCategory.create(sale_post_id: 18, sale_category_id: 1)
#
# # Sports posts
# postcategory14 = PostCategory.create(sale_post_id: 14, sale_category_id: 6)
# postcategory15 = PostCategory.create(sale_post_id: 15, sale_category_id: 6)
#
# # Electronics posts
# postcategory16 = PostCategory.create(sale_post_id: 16, sale_category_id: 4)
# postcategory17 = PostCategory.create(sale_post_id: 17, sale_category_id: 4)
