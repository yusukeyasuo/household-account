require "csv"

CSV.foreach('db/initial_profit.csv') do |row|
  Profit.create(:user_id => row[0], :category => row[1], :sub_category1 => row[2], :sub_category2 => row[3], :year_2019_01 => row[4], :year_2019_02 => row[5], :year_2019_03 => row[6])
end
