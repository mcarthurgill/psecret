class AddViewedToSecret < ActiveRecord::Migration
  def change
  	add_column :secrets, :viewed, :boolean, :default => false
  end
end
