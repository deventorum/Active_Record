class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :store_id, presence: { message: 'is missing' }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200, greater_than_or_equal_to: 40, message: 'should be set properly (from 40 to 200 per hour)' }

  before_save :generate_password

  private

  def generate_password
    self.password = (0...8).map { rand(65..90).chr }.join
  end
end
