class Trip < ActiveRecord::Base
  belongs_to :host, class_name: User
  has_many :reservations, dependent: :destroy
  has_many :passengers, through: :reservations, class_name: User
end
