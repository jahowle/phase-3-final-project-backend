class Neighbor < ActiveRecord::Base
    has_many :needs
    belongs_to :partner
    belongs_to :location

end