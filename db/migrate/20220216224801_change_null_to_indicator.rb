class ChangeNullToIndicator < ActiveRecord::Migration[6.1]
  def change
    change_column :indicators, :collection_id, :integer, null: true
  end
end
