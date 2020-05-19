class AuthorsController < ApplicationController

  def posts_index
  end

  def show
    @author = Author.find(params[:id])
  end

end
