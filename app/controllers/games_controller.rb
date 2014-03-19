class GamesController < ApplicationController

  # Calling all Games!
	def index
    @games = Game.all
	end

  # Calling a new Game
  # redirect to show
	def new
    @game = Game.new
    @game.save
    redirect_to @game
	end

  # Showing the game
  # @params 
  def show
    @game = Game.find(params[:id])
    redirect_to @game
  end
  
  # Play game using @params
  # Flash winner
  # Make it viewable in show!
  def update
    @game = Game.find(params[:id])
    @game.update_attributes(@game.board)
    redirect_to @game
  end
end
