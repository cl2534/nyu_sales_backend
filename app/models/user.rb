class User < ApplicationRecord
   #Validations
   validates_presence_of :name, :email, :password_digest
   validates :email, uniqueness: true
   has_many :sale_posts
   has_many :comments, through: :sale_posts
   #encrypt password
   has_secure_password
end
