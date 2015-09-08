class Reservation < ActiveRecord::Base
  belongs_to :trip
  belongs_to :passenger, class_name: User
end
