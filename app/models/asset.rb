class Asset < ApplicationRecord
  enum asset_type: { current_asset: 1, fixed_asset: 2, current_liability: 3, fixed_liability: 4}
end
