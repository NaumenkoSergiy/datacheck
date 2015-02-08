class Order < ActiveRecord::Base
  belongs_to :user
  has_many :codes

  after_create :create_code

  private

  def create_code
    codes.create(code: rand(999999999999))
  end
end
