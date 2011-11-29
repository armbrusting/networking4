class Company < ActiveRecord::Base
  has_many :employments
  has_many :contacts, :through => :employments
  has_many :sponsorships
  has_many :events, :through => :sponsorships
end
