class CreateBugtypes < ActiveRecord::Migration
  def change
    create_table :bugtypes do |t|
      t.string :typename

      t.timestamps
    end
  end
end
