class Need < ActiveRecord::Base
    belongs_to :neighbor
    belongs_to :category

end