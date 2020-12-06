class Api::V1::TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
    # render json: transactions, include: :fund
    render json: TransactionSerializer.new(transactions)
  end
end
