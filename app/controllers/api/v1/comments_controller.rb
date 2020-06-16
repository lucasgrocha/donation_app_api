class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @user = User.find_by(email: params['user_email'])
    @message = params['message']
    @product = Product.find_by(campaign_name: params['campaign_name'])

    @comment = Comment.new(user: @user, message: @message, product: @product)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  def get_comments_of_product
    # binding.pry
    @comments = Product.find_by(campaign_name: params['campaign_name']).comments

    @user_and_comments = []

    @comments.each do |k|
      @user_and_comments << {
        user_email: k.user.email,
        comment: k.message
      }
    end

    render json: @user_and_comments
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end
end
