class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:user).order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @book.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @book = Book.find(params[:id])
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def book_params
    params.require(:book).permit(:image, :book_name, :description, :category_id, :age, :price).merge(user_id: current_user.id)
  end

  def select__category_index
    @category = Category.find_by(id: params[:id])
    if @category.ancestry == nil
      category = Category.find_by(id: params[:id]).indirect_ids
      @books = []
      find_book(category)
    elsif @category.ancestry.include?("/")
      @book = Book.where(category_id: params[:id])
    else
      category = Category.find_by(id: params[:id]).child_ids
      @book = []
      find_book(category)
    end
  end
end
