class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :link
      t.text :caption

      t.timestamps
    end
  end
end
