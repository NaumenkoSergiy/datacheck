class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :code_type_id
      t.integer :order_id
      t.string :code
      t.integer :request_id
    end
  end
end
