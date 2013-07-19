class Secret < ActiveRecord::Base
	belongs_to :user
	attr_accessible :title, :content, :user_id

	validates :title, :content,  :presence => true
end	