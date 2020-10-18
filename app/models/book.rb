class Book < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :image, presence: true
  validates :book_name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 300 }
  validates :category_id, presence: true, numericality: { other_than: 1 }
  VALID_AGE_REGEX = /\A[0-9]+\z/
  validates :age, presence: true, format: { with: VALID_AGE_REGEX }
  VALID_PRICE_REGEX = /\A[0-9]+\z/
  validates :price, presence: true, format: { with: VALID_PRICE_REGEX }
  validates :user, presence: true
end
