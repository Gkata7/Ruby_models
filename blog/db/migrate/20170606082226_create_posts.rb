class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.references :blogger, index: true

      t.timestamps
    end
  end
end
