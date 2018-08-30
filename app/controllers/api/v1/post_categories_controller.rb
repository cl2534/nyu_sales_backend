class Api::V1::PostCategorysController < ApplicationController
  before_action :find_postcategory, only: [:show, :destroy, :update]
  def index
    @postcategories = PostCategory.all
    render json: { postcategories: PostCategory.all}
  end

  def new
    @postcategory = PostCategory.create
  end

  def show
    # @postcategory = PostCategory.find(params[:id])
    render json: { postcategory: @postcategory}
  end

  def create
    @postcategory = PostCategory.create(postcategory_params)
    render json: {postcategory: @postcategory}
  end

  def update
    # @postcategory = PostCategory.find(params[:id])
    @postcategory.update(postcategory_params)
    if @postcategory.save
      render json: @postcategory, status: :accepted
    else
      render json: { errors: @postcategory.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @postcategory.destroy
    render json: @postcategory, status: :accepted
  end


  private

  def postcategory_params
    params.permit(:sale_category_id, :sale_post_id)
  end

  def find_postcategory
    @postcategory = PostCategory.find(params[:id])
  end
end
