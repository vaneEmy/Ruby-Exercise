# Pretty print
require 'pp'
# use the class User
require_relative 'user'

user = User.new 'vanessa@example.com', 'Vanessa'

# print the  user
pp user
user.save