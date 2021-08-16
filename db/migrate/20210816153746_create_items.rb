class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :size
      t.string :type
      t.string :color
      t.integer :price
      t.string :title
      t.string :description
      t.string :brand
      t.string :occasion

      t.timestamps
    end
  end
end
