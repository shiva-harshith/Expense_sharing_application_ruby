class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :id_src
      t.integer :id_dest
      t.integer :amount
      t.timestamps
    end
  end
end
