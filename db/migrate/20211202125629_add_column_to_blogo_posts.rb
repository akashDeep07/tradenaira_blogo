class AddColumnToBlogoPosts < ActiveRecord::Migration
  def change
    add_column :blogo_posts, :is_custom, :boolean, default: false
  end
end
