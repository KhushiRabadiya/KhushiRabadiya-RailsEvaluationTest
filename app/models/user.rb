class User < ApplicationRecord
  validates :name, presence: true, format: {with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }
  validates :age, presence: true, numericality: { greater_than: 0, less_than: 100, message: "Up to 2 digits are allowed" }
  validates :gender, presence: true
end
