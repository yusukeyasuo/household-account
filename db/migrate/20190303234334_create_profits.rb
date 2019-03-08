class CreateProfits < ActiveRecord::Migration[5.2]
  def change
    create_table :profits do |t|
      t.integer :user_id
      t.integer :category
      t.integer :sub_category1
      t.integer :sub_category2
      t.integer :year_2019_01
      t.integer :year_2019_02
      t.integer :year_2019_03

      t.timestamps
    end
  end
end
