class Fund < ApplicationRecord
  has_many :donations, dependent: :destroy
end
