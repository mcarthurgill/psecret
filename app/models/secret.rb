class Secret < ActiveRecord::Base
	belongs_to :user

	validates :title, :content,  :presence => true
end	