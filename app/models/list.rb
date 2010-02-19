class List < ActiveRecord::Base
  has_and_belongs_to_many :entries
  has_and_belongs_to_many :top_lists, 
    :join_table => "list_to_list", 
    :foreign_key => "sub_list_id", 
    :association_foreign_key => "top_list_id",
    :class_name => "List"
    
  has_and_belongs_to_many :sub_lists, 
    :join_table => "list_to_list", 
    :foreign_key => "top_list_id", 
    :association_foreign_key => "sub_list_id",
    :class_name => "List"

end
