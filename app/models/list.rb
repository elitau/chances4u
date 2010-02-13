class List < ActiveRecord::Base
  has_and_belongs_to_many :entries
  has_and_belongs_to_many :lists, 
    :join_table => "list_to_list", 
    :foreign_key => "left_list_id", 
    :association_foreign_key => "right_list_id",
    
end
