class CodeType < ActiveRecord::Base
  has_many :codes
  belongs_to :user
end
