# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = User.new
# user.email = 'onlineauctionutfpr@gmail.com'
# user.password = 'admin123'
# user.city = 'Guarapuava'
# user.first_name = 'Admin'
# user.last_name = 'Surname'
# user.admin!
# user.save!

 User.create_with(password: 'admin123', password_confirmation: 'admin123' , city: 'Guarapuava',
 				  first_name: 'Admin', last_name: 'Surname', role: :admin).find_or_create_by(email: 'onlineauctionutfpr@gmail.com')
