class CreateHouseholds < ActiveRecord::Migration[5.2]
  def change
    create_table :households do |t|
      t.string :user_id
      t.string :year
      t.string :month
      t.string :day
      t.string :payment
      t.string :result
      t.string :sum_credit
      t.string :check_out
      t.string :detail
      t.string :analysis
      t.string :client
      t.string :content

      t.timestamps
    end
  end
end
