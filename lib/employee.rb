class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, presence: true, inclusion: 40..200
  validates :store_id, presence: true
end
