class AddUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |new|
  		new.string :user_name
  		new.string :password_digest
  		new.integer :limit

  		new.timestamp
  	end
  end
end
