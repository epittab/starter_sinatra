class ChangeColumnNameOnMachines < ActiveRecord::Migration[5.2]
  def change
    rename_column :machines, :type, :machine_type
  end
end
