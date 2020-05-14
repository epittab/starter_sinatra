class Machine < ActiveRecord::Base

    has_many :machine_parts, dependent: :destroy
    has_many :parts, through: :machine_parts

end
