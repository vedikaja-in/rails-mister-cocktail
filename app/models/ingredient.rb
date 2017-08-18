class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check_if_children

  validates :name, uniqueness: true
  validates :name, presence: true

  def check_if_children
    if doses.count > 0
      raise ActiveRecord::InvalidForeignKey
    end
  end

end
