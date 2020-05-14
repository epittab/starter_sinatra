class ChangeTableNameMachineParts < ActiveRecord::Migration[5.2]
  def change
    rename_table :machineparts, :machine_parts
  end
end
