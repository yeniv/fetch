class Dog < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :name, presence: true
  validates :photo, presence: true
  validates :location, presence: true
  validates :photo, presence: true
end
