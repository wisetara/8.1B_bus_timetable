class Stop < ActiveRecord::Base
  belongs_to :line
  belongs_to :station

  validates :station_id, :presence => true
  validates :line_id, :presence => true

end
