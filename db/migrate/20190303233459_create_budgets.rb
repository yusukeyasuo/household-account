class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.integer:category
      t.integer :sub_category1
      t.integer :sub_category2
      t.integer :budget
      t.integer :budget_month_on_month
      t.integer :result_month_on_month
      t.integer :budget_year_on_year
      t.integer :result_year_on_year

      t.timestamps
    end
  end
end
