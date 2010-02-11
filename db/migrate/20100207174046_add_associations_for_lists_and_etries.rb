class AddAssociationsForListsAndEtries < ActiveRecord::Migration
  def self.up
    create_table :entries_lists, :id => false do |t|
      t.integer :entry_id
      t.integer :list_id
      t.timestamps
    end
  end

  def self.down
    drop_table :entries_lists
  end
end
