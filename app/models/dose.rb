class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validates :description, presence: true
  # validates :cocktail, presence: true
  # validates :ingredient, presence: true

  # validates_uniqueness_of :cocktail_id, scope: :ingredient_id
  validates :cocktail_id, :uniqueness => {:scope => :ingredient_id}
end
