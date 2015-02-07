class CreateCodeTypes < ActiveRecord::Migration
  def change
    create_table :code_types do |t|
      t.string :name
      t.string :answer
    end
  end
end
