class Api::V1::TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
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

  # transactions_params(params) #these may need adjusting 
  #   def params.require(:transaction).permit(:recipient, :contact, :amount :date, :notes, :fund_id)
  #   end

end
