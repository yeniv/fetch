class Dog < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end
