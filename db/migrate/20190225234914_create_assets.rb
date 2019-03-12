class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.integer :user_id
      t.integer :asset_type
      t.string :name

      t.timestamps
    end
  end
end
