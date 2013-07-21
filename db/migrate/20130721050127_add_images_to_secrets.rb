class AddImagesToSecrets < ActiveRecord::Migration
  def change
  	add_column :secrets, :attachment_file_name, :string
  	add_column :secrets, :attachment_content_type, :string
  	add_column :secrets, :attachment_file_size, :string
  	add_column :secrets, :attachment_updated_at, :datetime
  end
end
