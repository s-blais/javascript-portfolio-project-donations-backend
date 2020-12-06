class ApplicationController < ActionController::API
  def index
    transactions = Transaction.all
    render json: transactions, include: :fund
  end
end
