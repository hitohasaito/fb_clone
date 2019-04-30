class RenameColumnNameToTitleOnFacebooks < ActiveRecord::Migration[5.1]
  def change
    rename_column :facebooks,:name,:title
  end
end
