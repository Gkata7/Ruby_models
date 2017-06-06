class CreateBloggers < ActiveRecord::Migration
  def change
    create_table :bloggers do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
