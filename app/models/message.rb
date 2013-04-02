class Message < ActiveRecord::Base
  belongs_to :from
  belongs_to :to
  attr_accessible :body, :title
end
