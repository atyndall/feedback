class User < ActiveRecord::Base
  has_secure_password validations: false

  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :password, presence: true, on: :create

  validates_uniqueness_of :username
  validates_presence_of :username
  validates_presence_of :name

  def self.authenticate?(username, password)
    user = find_by_username(username)
    user && user.authenticate(password)
  end

  def self.current_user(request)
    if ActionController::HttpAuthentication::Basic::user_name_and_password(request).nil?
      nil
    else
      find_by_username(ActionController::HttpAuthentication::Basic::user_name_and_password(request)[0])
    end
  end
end
