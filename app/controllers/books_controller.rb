class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true

  def index
    books = Book.all
    if stale?(books)
      respond_to do |format|
        format.json {
          render json: books.as_json
        }
      end
    end
  end

  def show
    book = Book.find_by(id: params[:id])
    if stale?(book)
      respond_to do |format|
        format.json {
          render json: book.as_json
        }
      end
    end
  end

  def update
    book = Book.find_by(id: params[:id])
    if book.update(book_params)
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  private

  def book_params
    params.require(:books).permit(:title, :author, :introduction, :published_at)
  end
end

