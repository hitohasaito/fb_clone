class AddColumnsToFacebooks < ActiveRecord::Migration[5.1]
  def change
  add_column :facebooks, :image, :text
  end
end
