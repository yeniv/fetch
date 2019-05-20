class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :status, presence: true, default: "pending"
  validates :request_message, presence: true
  validates :date, presence: true
  validates :time_start, presence: true
  validates :time_end, presence: true
end
