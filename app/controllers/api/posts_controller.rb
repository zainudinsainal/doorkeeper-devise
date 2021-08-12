module Api
  class PostsController < Api::ApplicationController
    def index
      @posts = Post.all
      render json: { posts: @posts }
    end
  end
end
