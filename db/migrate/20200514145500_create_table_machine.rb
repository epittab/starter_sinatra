class CreateTableMachine < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :type
      t.string :brand
      t.boolean :in_production
    end
  end
end
