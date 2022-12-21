class Location < ActiveRecord::Base
    has_many :partners
    has_many :neighbors
    has_many :needs, through: :neighbors

end