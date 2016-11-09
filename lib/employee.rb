class Employee < ActiveRecord::Base
  # Declare Associations
  belongs_to :store

  # Declare Validations
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, presence: true, inclusion: 40..200
  validates :store_id, presence: true

  # Callback methods register
  before_create :set_password
  # after_create :set_password
  # before_save :set_password

  # Regular Methods

  # Private Methods
  private

  def set_password
    charset = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
    self.password = Array.new(8) { charset.sample }.join
  end
end
