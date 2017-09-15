require 'json'
require_relative './models/movie'

file = File.read('movie_list.json')

data_hash = JSON.parse(file)

movies = []

data_hash.each do |movie|
  movie["rating"].delete! "\r"
  movie["time"].delete! "\r"
  movies << Movie.new({title: movie["title"], time: movie["time"], rating: movie["rating"] }) 
end

p movies


