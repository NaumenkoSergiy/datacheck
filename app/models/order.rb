class Order < ActiveRecord::Base
  belongs_to :user
  has_many :codes

  after_create :code_create

  private

  def code_create
    (count || 1).times do
      codes.create(code: rand(100000000000..999999999999))
    end
  end
end
