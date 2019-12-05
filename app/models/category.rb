class Category < ApplicationRecord
  has_many :board_category_relations
  has_many :boards, through: :board_category_relations
end
