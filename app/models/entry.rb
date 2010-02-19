class Entry < ActiveRecord::Base
  has_and_belongs_to_many :lists
  scope :latest, order('created_at DESC').limit(3)
end
