# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all

10.times do
    user = User.new
    user.name = Faker::Name.name
    user.username = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.password = '123456'
    user.password_confirmation = '123456'

    user.save

    rand(5).times do
    	post = Post.new
	    post.post = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 4)
	    post.user = user
	    post.save

	    rand(5).times do
	    	comment = Comment.new
		    comment.body = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 4)
		    comment.user = user
		    comment.post = post
		    comment.save
	    end
    end
    

    

end