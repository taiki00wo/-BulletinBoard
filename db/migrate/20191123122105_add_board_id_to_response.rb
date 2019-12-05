class AddBoardIdToResponse < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :board_id, :integer
  end
end
