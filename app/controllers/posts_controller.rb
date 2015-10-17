class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show 
  end

  def new
  end

  def edit
  end
end

#I believe the changes needed for assignment-31-crud should be here. 
#I'm not certain how to do it though. 