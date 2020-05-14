class Machine < ActiveRecord::Base

    has_many :machineparts
    has_many :parts, through: :machineparts

end
