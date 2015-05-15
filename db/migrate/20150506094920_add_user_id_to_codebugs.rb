class AddUserIdToCodebugs < ActiveRecord::Migration
  def change
    add_column :codebugs, :user_id, :int
  end
end
