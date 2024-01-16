class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
  end

  def create
    @book =Book.new(book_params)
    if @book.save
      flash[:notice] = "投稿に成功しました"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      flash[:notice] = "投稿に失敗しました"
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "更新に成功しました"
    redirect_to book_path(@book.id)
    else
      flash[:notice] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books/index'
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
