class RenameListToListColumns < ActiveRecord::Migration
  def self.up
    change_table :list_to_list do |t|
      t.rename(:right_list_id, :sub_list_id)
      t.rename(:left_list_id, :top_list_id)
    end
  end

  def self.down
    change_table :list_to_list do |t|
      t.rename(:sub_list_id, :right_list_id)
      t.rename(:top_list_id, :left_list_id)
    end
  end
end
