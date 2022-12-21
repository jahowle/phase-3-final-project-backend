class Partner < ActiveRecord::Base
    belongs_to :location
    has_many :neighbors

end