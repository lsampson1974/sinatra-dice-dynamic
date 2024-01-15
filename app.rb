require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_dice/:how_many_sides") do
  @rolls = []

  @number_dice = params.fetch("number_dice").to_i
  @number_sides = params.fetch("how_many_sides").to_i

  @number_dice.times do
      @rolls.push(rand(1..@number_sides))
  end

  erb(:flexible)
end
