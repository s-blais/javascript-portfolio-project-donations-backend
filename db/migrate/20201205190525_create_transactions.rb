class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :recipient
      t.string :contact
      t.integer :amount
      t.date :date
      t.text :notes
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
