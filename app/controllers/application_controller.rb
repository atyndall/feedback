class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def authenticate_user!
    authenticate_or_request_with_http_basic('ResClub Committee Only') do |name, password|
      User.authenticate?(name, password)
    end
  end
end
