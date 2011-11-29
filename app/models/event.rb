class Event < ActiveRecord::Base
  has_many :meetings
  has_many :contacts, :through => :meetings
  has_many :sponsorhsips
  has_many :companies, :through => :sponsorships
end
