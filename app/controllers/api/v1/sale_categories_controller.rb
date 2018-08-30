class Api::V1::SaleCategoriesController < ApplicationController
  before_action :find_salecategory, only: [:show, :destroy, :update]
  def index
    @salecategories = SaleCategory.all.includes(:sale_posts).find_by id: params[:id]
    render json: { salecategories: SaleCategory.all}, include:  ['sale_posts']
  end

  def new
    @salecategory = SaleCategory.create
  end

  def show
    salecategory = SaleCategory.includes(:sale_posts).find_by id: params[:id]
    # @salecategory = SaleCategory.find(params[:id])
    render json: { salecategory: @salecategory}
  end

  def create
    @salecategory = SaleCategory.create(salecategory_params)
    render json: {salecategory: @salecategory}
  end

  def update
    # @salecategory = SaleCategory.find(params[:id])
    @salecategory.update(salecategory_params)
    if @salecategory.save
      render json: @salecategory, status: :accepted
    else
      render json: { errors: @salecategory.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @salecategory.destroy
    render json: @salecategory, status: :accepted
  end

  private

  def salecategory_params
    params.permit(:name)
  end

  def find_salecategory
    @salecategory = SaleCategory.find(params[:id])
  end
end
