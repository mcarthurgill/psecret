class Secret < ActiveRecord::Base
	belongs_to :user
	attr_accessible :title, :content, :user_id, :attachment, :thumb

	has_attached_file :attachment, :styles => {
																							:thumb => "100x100#",
																				      :small  => "150x150>",
																				      :medium => "200x200",
																				      :large => "500x500" 
																				    }

	validates :title, :content, :attachment, :presence => true
end	