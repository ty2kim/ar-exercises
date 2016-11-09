# class Store
class Store < ActiveRecord::Base
  # Declare Associations
  has_many :employees

  # Declare Validations
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Callback methods register
  validate :must_carry_mens_or_womens_apparel

  # Regular Methods

  # Private Methods
  private

  def must_carry_mens_or_womens_apparel
    errors.add(:mens_womens_apparel, 'is both false') unless mens_apparel || womens_apparel
  end
end
