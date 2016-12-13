#!/usr/bin/ruby -w

class Movie
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

class NetflixAccount
  # Your code goes here
  attr_reader :username 
  attr_reader :my_list
  attr_reader :recently_watched

  def initialize(username)
    @username = username
    @my_list = []
    @recently_watched = []
  end

  public
  def add_to_my_list(movie)
  # Your code goes here
    @my_list << movie if validate(movie)
  end

  def remove_from_my_list(movie)
    # Your code goes here
    @my_list.delete_if { |mv| mv.title == movie.title }
  end

  def watch(movie)
    # Your code goes here
    @recently_watched << movie if validate(movie)
  end

  private
  def validate(movie)
    movie.is_a? Movie 
  end
end

movies = [
  Movie.new("Seven Samurai"), 
  Movie.new("Wall Street"), 
  Movie.new("Big Hero 6")
]

account = NetflixAccount.new("user123")
account.watch(movies[0])
account.add_to_my_list(movies[1])
account.add_to_my_list(movies[2])
account.remove_from_my_list(movies[2])

puts "\t<Account Username> "
puts account.username

puts "\t<Recently Watched>"
account.recently_watched.each { |mv| puts mv.title }

puts "\t<Movies List>"
account.my_list.each { |mv| puts mv.title }