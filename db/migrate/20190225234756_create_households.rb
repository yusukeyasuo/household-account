class CreateHouseholds < ActiveRecord::Migration[5.2]
  def change
    create_table :households do |t|
      t.references :user, index: true
      t.date :entry_date
      t.integer :category
      t.integer :sub_category1
      t.integer :sub_category2
      t.integer :payment
      t.integer :result
      t.integer :sum_credit
      t.integer :check_out
      t.integer :detail
      t.integer :analysis
      t.string :client
      t.string :content

      t.timestamps
    end
  end
end
