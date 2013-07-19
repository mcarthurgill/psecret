class CreateSecrets < ActiveRecord::Migration
	def change
		create_table :secrets do |t|
			t.string :title
			t.string :content
			t.references :user

			t.timestamps
		end
	end
end
