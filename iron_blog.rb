
require 'date'

puts "---------------------------------------------------------"
puts "Iron Blog - Week 1 Project"
puts "---------------------------------------------------------"

class Blog
	def initialize()

		@posts = Array.new
		@position = 0
	end

	def sort_by_date
		@posts = @posts.sort_by {|post| post.date }.reverse
	end

    def push(post)
	 	@posts.push post
	end

	def publish_front_page
		posts_to_print = @posts.slice(@position,@position + 3)
		posts_to_print.each do |post|
	 		puts post.date, post.title, post.text
	 	end
	 	puts "------------------------------------------"
	 	puts "[#{@position}] through [#{@position + 3}]"
	 	puts "1  2  3"
	 	gets.chomp
	 	puts " "

	end
	# def turn_the_page
	# 	@position = 3
	# 	posts_to_print = @posts.slice(@position, @position + 0)
	# 	posts_to_print.each do |post|
	#  		puts post.date, post.title, post.text
	#  	end
	#  	puts "------------------------------------------"
	#  	puts "[#{@position}] of [#{@position + 0}]"
	# end
	def turn_the_page
		@position = 3
		posts_to_print = @posts.slice(@position, @position + 0)
		posts_to_print.each do |post|
	 		puts post.date, post.title, post.text
	 	end
	 	puts "------------------------------------------"
	 	puts "[#{@position}] through [#{@position + 3}]"
	 	puts "1  2  3"
	 	gets.chomp
	 	puts " "
	end
	def turn_the_page_again
		@position = 6
		posts_to_print = @posts.slice(@position, @position + 1)
		posts_to_print.each do |post|
	 		puts post.date, post.title, post.text
	 	end
	 	puts "------------------------------------------"
	 	puts "[#{@position}] through [#{@position + 2}]"
	 	puts "1  2  3"
	end
end

class Post
	attr_accessor :date, :title, :text
	def initialize(title, text, date)
		@title = title
		@text = text
		@date = date
	end

	def gets_title
		@title
	end

	def gets_text
		@text 
	end
end

class Date 
end



blog = Blog.new

date = Date.new

first_post = Post.new("Blog Post 1", "'Post 1 text...'", Date.new(2015,6,15))
first_post.gets_title
first_post.gets_text

second_post = Post.new("*********Blog Post 2*********", "'Post 2 text...'", Date.new(2015,6,14))
second_post.gets_title
second_post.gets_text

third_post = Post.new("Blog Post 3", "'Post 3 text...'", Date.new(2015,5,15))
third_post.gets_title
third_post.gets_text

fourth_post = Post.new("Blog Post 4", "'Post 4 text...'", Date.new(2015,4,15))
fourth_post.gets_title
fourth_post.gets_text

fifth_post = Post.new("Blog Post 5", "'Post 5 text...'", Date.new(2015,3,15))
fifth_post.gets_title
fifth_post.gets_text

sixth_post = Post.new("Blog Post 6", "'Post 6 text...'", Date.new(2015,2,15))
sixth_post.gets_title
sixth_post.gets_text

seventh_post = Post.new("Blog Post 7", "'Post 7 text...'", Date.new(2015,1,15))
seventh_post.gets_title
seventh_post.gets_text

eigth_post = Post.new("Blog Post 8", "'Post 8 text...'", Date.new(2015,1,12))
eigth_post.gets_title
eigth_post.gets_text

blog.push(first_post)
blog.push(second_post)
blog.push(third_post)
blog.push(fourth_post)
blog.push(fifth_post)
blog.push(sixth_post)
blog.push(seventh_post)
blog.push(eigth_post)


blog.sort_by_date

blog.publish_front_page
puts "------------------------------------------"
blog.turn_the_page
puts "------------------------------------------"
blog.turn_the_page_again


 



