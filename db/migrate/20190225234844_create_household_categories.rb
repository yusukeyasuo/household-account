class CreateHouseholdCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :household_categories do |t|
      t.string :user_id
      t.string :category
      t.string :sub_category1
      t.string :sub_category2

      t.timestamps
    end
  end
end
