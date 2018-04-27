class CreateLaptops < ActiveRecord::Migration[5.0]
  def change
    create_table :laptops do |t|
      t.string :company
      t.float :inch
      t.integer :year

      t.timestamps
    end
  end
end
