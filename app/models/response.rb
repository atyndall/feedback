class Response < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :category
  attr_accessor :anon

  # Ratings are -1, 0 or 1
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: -1, less_than_or_equal_to: 1, message: 'must be selected'}, if: :needs_rating?

  # Ensure that any email is valid
  validates :email, email: true, allow_blank: true

  def needs_rating?
    category.get_rating?
  end

  def needs_details?
    category.get_details?
  end
end
