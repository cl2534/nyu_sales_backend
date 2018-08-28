class Api::V1::SalePostsController < ApplicationController
  before_action :find_salepost, only: [:show, :destroy, :update]
  def index
    @saleposts = SalePost.all
    render json: { saleposts: SalePost.all}
  end

  def new
    @salepost = SalePost.create
  end

  def show
    # @salepost = SalePost.find(params[:id])
    render json: { salepost: @salepost}
  end

  def create
    @salepost = SalePost.create(salepost_params)
    render json: {salepost: @salepost}
  end

  def update
    # @salepost = SalePost.find(params[:id])
    @salepost.update(salepost_params)
    if @salepost.save
      render json: @salepost, status: :accepted
    else
      render json: { errors: @salepost.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @salepost.destroy
    render json: @salepost, status: :accepted
  end

  private

  def salepost_params
    params.permit(:name)
  end

  def find_salepost
    @salepost = SalePost.find(params[:id])
  end
end
