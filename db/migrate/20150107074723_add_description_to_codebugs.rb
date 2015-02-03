class AddDescriptionToCodebugs < ActiveRecord::Migration
  def change
    add_column :codebugs, :description, :string
  end
end
