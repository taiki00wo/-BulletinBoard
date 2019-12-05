class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @search = Board.ransack(params[:q])
    @boards = @search.result
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    if @board.save!
      flash[:notice] = "スレッド：#{@board.title}を作成しました。"
    else
      flash[:alert] = "スレッド：#{@board.title}の作成に失敗しました。"
    end
    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
    @responses = @board.responses
  end

  private

  def board_params
    params.permit(:title, :content, category_ids: [])
  end
end
