class AddUserRefToFacebooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :facebooks, :user, foreign_key: true
  end
end
