class Api::V1::PostCategorysController < ApplicationController
  before_action :find_post_category, only: [:show, :destroy, :update]
  skip_before_action :authorized, only: %i[create index]

  def index
    @post_categories = PostCategory.all
    render json: { post_categories: PostCategory.all}
  end

  def new
    @post_category = PostCategory.create
  end

  def show
    # @post_category = PostCategory.find(params[:id])
    render json: { post_category: @post_category}
  end

  def create
    @post_category = PostCategory.create(post_category_params)
    render json: {post_category: @post_category}
  end

  def update
    # @post_category = PostCategory.find(params[:id])
    @post_category.update(post_category_params)
    if @post_category.save
      render json: @post_category, status: :accepted
    else
      render json: { errors: @post_category.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @post_category.destroy
    render json: @post_category, status: :accepted
  end


  private

  def post_category_params
    params.permit(:sale_category_id, :sale_post_id)
  end

  def find_post_category
    @post_category = PostCategory.find(params[:id])
  end
end
