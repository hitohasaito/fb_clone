class AddIndexToUserEmail < ActiveRecord::Migration[5.1]
  def change
    add_index:users,:email,unique:true #uniqueで重複したものを取り除く
  end
end
