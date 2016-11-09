# class Store
class Store < ActiveRecord::Base
  # Declare Associations
  has_many :employees

  # Declare Validations
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Callback methods register
  validate :must_carry_mens_or_womens_apparel
  before_destroy :check_employees_exist
  # Regular Methods

  # Private Methods
  private

  def must_carry_mens_or_womens_apparel
    return unless mens_apparel == false && womens_apparel == false
    errors.add(:mens_womens_apparel, 'is both false')
  end

  def check_employees_exist
    errors.add(:employees, 'exist in the store') if employees.exists?
    false
  end
end
