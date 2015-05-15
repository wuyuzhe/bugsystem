class AddBugtypeIdToCodebugs < ActiveRecord::Migration
  def change
    add_column :codebugs, :bugtype_id, :int
  end
end
