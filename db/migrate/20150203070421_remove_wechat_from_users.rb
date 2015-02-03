class RemoveWechatFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :wechat, :string
  end
end
