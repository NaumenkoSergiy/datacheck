class Code < ActiveRecord::Base
  belongs_to :order
  belongs_to :code_type
  has_one :request
end
