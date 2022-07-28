class ChangesToTables < ActiveRecord::Migration
  def change
    add_index :transactions, [:id_src, :id_dest], unique: true
  end
end
