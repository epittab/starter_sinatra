class Part < ActiveRecord::Base

    has_many :machineparts
    has_many :machines, through: :machineparts

end
