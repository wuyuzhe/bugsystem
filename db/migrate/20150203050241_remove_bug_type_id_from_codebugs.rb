class RemoveBugTypeIdFromCodebugs < ActiveRecord::Migration
  def change
    remove_column :codebugs, :bug_type_id, :int
  end
end
