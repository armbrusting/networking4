class Contact < ActiveRecord::Base
  has_many :meetings
  has_many :followups
  has_many :employments
  has_many :companies, :through => :employments
end
