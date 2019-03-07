require "csv"
CSV.foreach('db/initial_household.csv') do |row|
  Household.create(
    :user_id => row[0], 
    :entry_date => row[1], 
    :category => row[2],
    :sub_category1 => row[3],
    :sub_category2 => row[4],
    :payment => row[5], 
    :result => row[6], 
    :sum_credit => row[7], 
    :check_out => row[8], 
    :detail => row[9], 
    :analysis => row[10], 
    :client => row[11], 
    :content => row[12])
end
