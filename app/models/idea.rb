class Idea < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :image_ideas
  has_many :images, through: :image_ideas

  validates :idea_text, presence: true
end
