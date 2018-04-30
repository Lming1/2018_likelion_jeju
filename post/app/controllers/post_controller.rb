class PostController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index
    @boards = Board.all
    puts @boards
  end

  def new

  end

  def create
    @title = params[:title]
    @content = params[:content]

    @board = Board.new
    @board.title = @title
    @board.content = @content
    @board.save
    redirect_to '/'
  end
end
