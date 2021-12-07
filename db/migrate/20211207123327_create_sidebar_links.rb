class CreateSidebarLinks < ActiveRecord::Migration
  def change
    create_table :sidebar_links do |t|
      t.string :title
      t.string :url
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
end
