class Board < ApplicationRecord
  belongs_to :user
  has_many :responses, dependent: :destroy
  has_many :board_category_relations
  has_many :categories, through: :board_category_relations
end
