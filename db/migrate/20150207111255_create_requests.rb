class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.datetime :date
      t.string :ip_address
      t.integer :code_id
      t.boolean :passed
    end
  end
end
