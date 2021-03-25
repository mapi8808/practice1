class User::BooksController < ApplicationController
  
  def top
  end
  
  def about
  end
  
  def index
    @books = Book.all
    @user = User.name
  end

  def new
    @book = Book.new
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :image, :user_id)
  end
  
    
end
