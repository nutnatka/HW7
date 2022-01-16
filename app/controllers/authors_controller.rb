class AuthporsController < ApplicationController
  # GET /authors or /authors.json
  def index
    @authors = Author.all
  end

  def show
  end
end



