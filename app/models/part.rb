class Part < ActiveRecord::Base

    has_many :machine_parts, dependent: :destroy
    has_many :machines, through: :machine_parts

end
