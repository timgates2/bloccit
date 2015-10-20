class PostsController < ApplicationController

  def show
# #19
    @post = Post.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
  end
  
  def create
     @post = Post.new
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]
     @topic = Topic.find(params[:topic_id])
 # #35
     @post.topic = @topic
     if @post.save

       flash[:notice] = "Post was saved."
       redirect_to [@topic, @post]
     else
       
       flash[:error] = "There was an error saving the post. Please try again."
       render :new
     end
  end

  def edit
     @post = Post.find(params[:id])
  end
  
   def update
     @post = Post.find(params[:id])
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]
 
     if @post.save
       flash[:notice] = "Post was updated."
       redirect_to [@post.topic, @post]
     else
       flash[:error] = "There was an error saving the post. Please try again."
       render :edit
     end
   end
   
   def destroy
     @post = Post.find(params[:id])
 
 # #8
     if @post.destroy
       flash[:notice] = "\"#{@post.title}\" was deleted successfully."
       redirect_to @post.topic
     else
       flash[:error] = "There was an error deleting the post."
       render :show
     end
   end
end
#I believe the changes needed for assignment-31-crud should be here. 
#I'm not certain how to do it though. 