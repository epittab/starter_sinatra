class MachinePart < ActiveRecord::Base

    belongs_to :machine
    belongs_to :part

end
