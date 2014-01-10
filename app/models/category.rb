class Category < ActiveRecord::Base
  has_many :responses, dependent: :destroy

  validates_presence_of :name

  validates :urlname, presence: true, length: {maximum: 25}, format: {with: /\A(?=.*[a-z])[a-z\d]+\Z/, message: 'must contain only lowercase letters and numbers'}
  validates_uniqueness_of :urlname, case_sensitive: false

  validate :cant_disable_both

  def cant_disable_both
    if not get_rating? and not get_details?
      errors.add(:base, 'You can\'t disable both details and ratings collection')
    end
  end
end
