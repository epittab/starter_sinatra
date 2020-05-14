class Part < ActiveRecord::Base

    has_many :machine_parts
    has_many :machines, through: :machine_parts

end
