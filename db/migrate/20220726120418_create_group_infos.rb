class CreateGroupInfos < ActiveRecord::Migration
  def change
    create_table :group_infos do |t|
      t.integer :g_number
      t.timestamps
    end
  end
end
