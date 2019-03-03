class CreateProfits < ActiveRecord::Migration[5.2]
  def change
    create_table :profits do |t|
      t.string :user_id
      t.string :category
      t.string :sub_category1
      t.string :sub_category2
      t.string :year_2019_01
      t.string :year_2019_02
      t.string :year_2019_03

      t.timestamps
    end
  end
end
