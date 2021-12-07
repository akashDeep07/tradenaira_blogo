class AddColumnToBlogoUsers < ActiveRecord::Migration
  def change
    add_column :blogo_users, :sidebar_enable, :boolean, default: false
  end
end
