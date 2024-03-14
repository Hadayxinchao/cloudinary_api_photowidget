class AddAssetColumnToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :asset, :text
  end
end
