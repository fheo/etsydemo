class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :proce

      t.timestamps
    end
  end
end
