class Dog < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user

  validates :name, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end
