require "sinatra"
require "sinatra/contrib/all"
require_relative('./models/Game')

get "/" do
   erb(:home)
 
end

get "/play/:player1/:player2" do
  game1 = Game.new(params[:player1],params[:player2])

  @player1 = params[:player1]
  @player2 = params[:player2]
  @turn = game1.turn

  erb(:game)
end

get "/play" do
 erb(:play)
end


