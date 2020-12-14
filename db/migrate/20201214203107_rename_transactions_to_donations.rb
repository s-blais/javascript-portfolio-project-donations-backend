class RenameTransactionsToDonations < ActiveRecord::Migration[6.0]
  def change
    rename_table :transactions, :donations
  end
end
