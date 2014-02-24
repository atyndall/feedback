class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:new, :create]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all.order(:category_id)
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @response = Response.new
    @response.rating = nil
    @categories = Category.all

    if params.has_key?(:urlname)
      @response.category = Category.find_by_urlname!(params[:urlname])
    end
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to thanks_path }
        format.json { render action: 'show', status: :created, location: @response }
      else
        format.html { render action: 'new' }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:name, :email, :liked, :disliked, :category_id, :rating, :anon)
    end
end
