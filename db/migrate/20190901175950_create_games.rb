class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.float :price
      t.integer :developer_id

      t.timestamps
    end
  end
end
