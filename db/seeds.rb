require "csv"

CSV.foreach('db/initial_household.csv') do |row|
  Household.create(:user_id => row[0], :year => row[1], :month => row[2], :day => row[3], :payment => row[4], :result => row[5], :sum_credit => row[6], :check_out => row[7], :detail => row[8], :analysis => row[9], :client => row[10], :content => row[11])
end