class Sponsorship < ActiveRecord::Base
  belongs_to :employment
  belongs_to :event
end
