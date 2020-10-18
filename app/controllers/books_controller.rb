class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
  end
end
