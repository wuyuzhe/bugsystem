class CreateCodebugs < ActiveRecord::Migration
  def change
    create_table :codebugs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
