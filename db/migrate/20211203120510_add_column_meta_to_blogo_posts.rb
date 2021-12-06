class AddColumnMetaToBlogoPosts < ActiveRecord::Migration
  def change
    add_column :blogo_posts, :meta_title, :text
  end
end
