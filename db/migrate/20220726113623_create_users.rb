class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :m_number
      t.integer :g_number
      t.timestamps
    end
  end
end
