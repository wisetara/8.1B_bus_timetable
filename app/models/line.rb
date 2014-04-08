class Line < ActiveRecord::Base
  has_many :stops
  has_many :stations, through: :stops

  validates :number, :presence => true
end
