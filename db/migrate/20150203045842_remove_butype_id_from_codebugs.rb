class RemoveButypeIdFromCodebugs < ActiveRecord::Migration
  def change
    remove_column :codebugs, :butype_id, :int
  end
end
