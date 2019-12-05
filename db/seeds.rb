# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'user_1', email: 'test1@email.com', password: 'password')
User.create!(name: 'user_2', email: 'test2@email.com', password: 'password')
User.create!(name: 'user_3', email: 'test3@email.com', password: 'password')

Board.create!(title: 'title1', content: 'content1', user_id: 1)
Board.create!(title: 'title2', content: 'content2', user_id: 1)
Board.create!(title: 'title3', content: 'content3', user_id: 2)
Board.create!(title: 'title4', content: 'content4', user_id: 2)
Board.create!(title: 'title5', content: 'content5', user_id: 3)
Board.create!(title: 'title5', content: 'content5', user_id: 3)

Category.create!(name: '芸能')
Category.create!(name: '速報ニュース')
Category.create!(name: '災害')
Category.create!(name: '天気')

BoardCategoryRelation.create!(board_id: 1, category_id: 1)
BoardCategoryRelation.create!(board_id: 2, category_id: 2)
BoardCategoryRelation.create!(board_id: 3, category_id: 3)
BoardCategoryRelation.create!(board_id: 4, category_id: 4)