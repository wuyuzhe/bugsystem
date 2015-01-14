class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.string :wechat
      t.string :remember_token

      t.timestamps
    end
  end
end
