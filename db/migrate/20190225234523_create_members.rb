class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :mail
      t.string :password
      t.string :last_name
      t.string :first_name
      t.string :status

      t.timestamps
    end
  end
end
