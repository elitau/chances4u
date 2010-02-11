class AddAssociationsForListsAndLists < ActiveRecord::Migration
  def self.up
    create_table :list_to_list, :id => false do |t|
      t.integer :right_list
      t.integer :left_list
      t.timestamps
    end
  end

  def self.down
    drop_table :list_to_list
  end
end
