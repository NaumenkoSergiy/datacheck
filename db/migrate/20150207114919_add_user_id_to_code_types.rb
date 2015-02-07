class AddUserIdToCodeTypes < ActiveRecord::Migration
  def change
    add_column :code_types, :user_id, :integer
  end
end
