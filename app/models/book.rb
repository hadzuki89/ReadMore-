class Book < ApplicationRecord

  has_one_attached :image

  validates :title, :story, :quote, :thought, presence: true

  validates :category_id, presence: true, numericality: { other_than: 1 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
