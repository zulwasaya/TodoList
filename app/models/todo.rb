class Todo < ActiveRecord::Base
  attr_accessible  :priority, :subject, :user
  belongs_to :user

  validates_presence_of :subject

  has_many :todolists
end
