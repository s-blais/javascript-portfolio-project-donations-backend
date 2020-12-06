class Fund < ApplicationRecord
  has_many :transactions, dependent: :destroy
end
