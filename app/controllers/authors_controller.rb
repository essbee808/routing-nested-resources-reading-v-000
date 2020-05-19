class AuthorsController < ApplicationController

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render template: 'posts/index' # since we're telling render that we're using a template, we don't need to include .html.erb; rails figured it out
  end

  def post
    @author = Author.find(params[:id])

    #notice that because ids are unique by table we can go directly to
    # Post.find - no need for @author.posts.find...
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end

  def show
    @author = Author.find(params[:id])
  end

end
