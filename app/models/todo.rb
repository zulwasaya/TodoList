class Todo < ActiveRecord::Base
  attr_accessible :description, :priority, :subject
end
