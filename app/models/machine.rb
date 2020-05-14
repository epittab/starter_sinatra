class Machine < ActiveRecord::Base

    has_many :machine_parts
    has_many :parts, through: :machine_parts

end
