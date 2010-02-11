class AddAssociationsForListsAndLists < ActiveRecord::Migration
  def self.up
    create_table :table_name, :force => true do |t|
      t.
      t.timestamps
    end
  end

  def self.down
    drop_table :table_name
  end
end
