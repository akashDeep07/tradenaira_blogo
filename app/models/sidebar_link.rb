class SidebarLink < ActiveRecord::Base

	validates :title, :url, presence: true
end
