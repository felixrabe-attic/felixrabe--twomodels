class Vendor < ActiveRecord::Base
  has_many :softwares, dependent: :destroy
end
