class ResponsesController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @response = Response.new(response_params)
    @response.user_id = current_user.id
    @response.board_id = @board.id
    @response.save!
    @responses = @board.responses
    redirect_to board_path(@board)
  end

  def response_params
    params.permit(:content)
  end
end
