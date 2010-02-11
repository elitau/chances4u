class List < ActiveRecord::Base
  has_and_belongs_to_many :entries
  # has_and_belongs_to_many :lists
end
