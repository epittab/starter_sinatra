class CreateTableParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :brand
      t.integer :reference_number
    end
  end
end
