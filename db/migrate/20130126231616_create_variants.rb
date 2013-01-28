class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :name,
      t.text, :value
      t.integer :product_id

      t.timestamps
    end
  end
end
