class MiscController < ApplicationController
  skip_before_action :authenticate_user!, only: [:thanks]

  def adminindex
  end

  def thanks
  end
end
