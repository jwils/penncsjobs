class JobPosting < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  attr_accessible :description, :location, :title
end
