class Api::V1::CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :destroy, :update]
    skip_before_action :authorized, only: %i[create index]

    def index
      @comments = Comment.all.find_by id: params[:id]
      render json: { comments: Comment.all}
    end

    def new
      @comment = Comment.create
    end

    def show
      @comment = Comment.all.find_by id: params[:id]
      # @comment = Comment.find(params[:id])
      render json: { comment: @comment}
    end

    def create
      @comment = Comment.create(comment_params)
      render json: {comment: @comment}
    end

    def update
      # @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      if @comment.save
        render json: @comment, status: :accepted
      else
        render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
      # @post = post.find(params[:id])
      @comment.destroy
      render json: @comment, status: :accepted
    end

    private

    def comment_params
      params.permit(:comment, :sale_post_id, :user_id)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end
end
