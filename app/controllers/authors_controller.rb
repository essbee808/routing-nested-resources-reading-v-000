class AuthorsController < ApplicationController

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render template: 'posts/index'
  end

  def post
    @author = Author.find(params[:id])

    #notice that because ids are unique by table we can go directly to 
    # Post.find - no need for @author.posts.find...
  end

  def show
    @author = Author.find(params[:id])
  end

end
