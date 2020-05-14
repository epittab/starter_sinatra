class MachinePart < ActiveRecord::Base

    belongs_to :machines
    belongs_to :parts

end
