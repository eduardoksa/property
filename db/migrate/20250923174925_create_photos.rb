class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.references :property, null: false, foreign_key: true
      t.string :file
      t.integer :position

      t.timestamps
    end
  end
end
