class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
