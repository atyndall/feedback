class ReportController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @responses = @category.responses

    @badc = @responses.where(rating: -1).count
    @avgc = @responses.where(rating: 0).count
    @godc = @responses.where(rating: 1).count

    @count = @responses.count
  end

  def list
    @categories = Category.all
  end
end
