class CreatePdoducts < ActiveRecord::Migration[5.0]
  def change
    create_table :pdoducts do |t|
      t.string :title

      t.timestamps
    end
  end
end
