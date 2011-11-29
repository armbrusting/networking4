class Meeting < ActiveRecord::Base
  belongs_to :event
  belongs_to :contact
  has_many :followups
end
