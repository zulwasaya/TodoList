class Todo < ActiveRecord::Base
  attr_accessible :description, :priority, :subject, :user
  belongs_to :user

  validates_presence_of :subject
  validates_presence_of :priority
  validates_numericality_of :priority
  validates_presence_of :description
  has_many :todolists
end
