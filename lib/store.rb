class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }, format: { with: /\A[a-zA-Z ]+\z/,
                                                     message: 'only allows letters' }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0,
                                             message: 'should not be a negative number' }
  validate :at_least_one_apparel

  before_destroy :check_data

  def at_least_one_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, 'must have at least one type of apparel')
      errors.add(:womens_apparel, 'must have at least one type of apparel')
    end
  end

  private

  def check_data
    if Employee.where("store_id = #{id}").count != 0
      errors.add :base, 'Cannot destroy store with employees'
      throw(:abort)
    end
  end
end
