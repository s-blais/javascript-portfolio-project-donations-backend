class Api::V1::TransactionsController < ApplicationController
  def index
    transactions = Transaction.all.sort_by{|t| t[:date]}.reverse
    # render json: transactions, include: :fund
    render json: TransactionSerializer.new(transactions)
  end

  def create
    transaction = Transaction.new(transaction_params)
    if transaction.save
      render json: TransactionSerializer.new(transaction), status: :accepted
    else
      render json: {errors: transaction.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date, :recipient, :contact, :amount, :fund_id, :notes)
  end

end
