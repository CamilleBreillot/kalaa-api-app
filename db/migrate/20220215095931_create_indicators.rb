class CreateIndicators < ActiveRecord::Migration[6.1]
  def change
    create_table :indicators do |t|
      t.string :name
      t.integer :value
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
