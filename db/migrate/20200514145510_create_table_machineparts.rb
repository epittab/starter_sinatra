class CreateTableMachineparts < ActiveRecord::Migration[5.2]
  def change
    create_table :machineparts do |t|
      t.integer :machine_id
      t.integer :part_id
    end
  end
end
