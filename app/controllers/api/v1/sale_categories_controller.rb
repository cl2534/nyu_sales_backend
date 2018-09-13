class Api::V1::SaleCategoriesController < ApplicationController
  before_action :find_sale_category, only: [:show, :destroy, :update]
  skip_before_action :authorized, only: %i[create index show]

  def index
    @sale_categories = SaleCategory.all.includes(:sale_posts).find_by id: params[:id]
    render json: { sale_categories: SaleCategory.all}, include: ['sale_posts']
  end

  def new
    @sale_category = SaleCategory.create
  end

  def show
    sale_category = SaleCategory.includes(:sale_posts).find_by id: params[:id]
    # @sale_category = SaleCategory.find(params[:id])
    render json: { sale_category: @sale_category}, include: ['sale_posts']
  end

  def create
    @sale_category = SaleCategory.create(sale_category_params)
    render json: {sale_category: @sale_category}
  end

  def update
    # @sale_category = SaleCategory.find(params[:id])
    @sale_category.update(sale_category_params)
    if @sale_category.save
      render json: @sale_category, status: :accepted
    else
      render json: { errors: @sale_category.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @sale_category.destroy
    render json: @sale_category, status: :accepted
  end

  private

  def sale_category_params
    params.permit(:name, :picture_url)
  end

  def find_sale_category
    @sale_category = SaleCategory.find(params[:id])
  end
end
