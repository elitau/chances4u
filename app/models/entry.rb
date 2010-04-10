class Entry < ActiveRecord::Base
  validates_presence_of :title, :on => :save, :message => "can't be blank"
  validates_presence_of :body, :on => :save, :message => "can't be blank"
  
  has_and_belongs_to_many :lists
  scope :latest, order('created_at DESC').limit(3)
end
