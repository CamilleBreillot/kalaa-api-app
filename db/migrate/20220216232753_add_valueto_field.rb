class AddValuetoField < ActiveRecord::Migration[6.1]
  def change
    add_column :fields, :value, :integer
  end
end
