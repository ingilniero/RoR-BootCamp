class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.decimal :price
      t.string :active
      t.string :boolean

      t.timestamps
    end
  end
end
