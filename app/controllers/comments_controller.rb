class CommentsController < ApplicationController
    def index
        
    end
    def show
        
    end
    def new
        
    end
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          redirect_to customer_path(@comment.customer_id)
        else
          redirect_to customer_path(@comment.customer_id), flash: { error_message: @comment.errors.full_messages, error_count: @comment.errors.count, error_comment: @comment.body }
        end
    end
    def edit
    
    end
    def update
        
    end
    def destroy
        @comment = Comment.find(params[:id])
        customer_id = @comment.customer_id
        @comment.destroy
        redirect_to customer_path(customer_id)
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :customer_id, :user_id)
    end

end
