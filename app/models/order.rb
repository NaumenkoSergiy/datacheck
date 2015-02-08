class Order < ActiveRecord::Base
  belongs_to :user
  has_many :codes

  after_create :code_create

  private

  def code_create
    codes.create(code: rand(999999999999))
  end
end
