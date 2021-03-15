class Admin::BooksController < ApplicationController
  
  def top
  end
  
  def about
  end
  
  def index
    @books = Book.all
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
  end
  
  def update
  end

  def destroy
  end
  
  private
  def book_params
  params.require(:book).pirmit(:title, :body, :image_id)
  end
  
    
end
