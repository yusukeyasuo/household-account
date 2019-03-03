class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :user_id
      t.string :category
      t.string :sub_category1
      t.string :sub_category2
      t.string :budget
      t.string :budget_month_on_month
      t.string :result_month_on_month
      t.string :budget_year_on_year
      t.string :result_year_on_year

      t.timestamps
    end
  end
end
