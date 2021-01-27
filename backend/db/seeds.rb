# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Review.destroy_all
Reservation.destroy_all

testuser1 = User.create(username: "testuser", password: "test", email: "test@test.com", phone: 2102897584)
testreview1 = Review.create(user_id: testuser1.id, text: "this is my review", rating: 5 )
testreview2 = Review.create(user_id: testuser1.id, text: "this is my second review", rating: 4 )
testreview3 = Review.create(user_id: testuser1.id, text: "this is my third review", rating: 5 )
testreview4 = Review.create(user_id: testuser1.id, text: "this is my fourth review", rating: 2)