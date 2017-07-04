class AddFollowersTable < ActiveRecord::Migration[5.0]
  def change
  	 create_table :followers do |t|
      t.integer "user_id"
      t.integer "follows_user_id"
    end
  end
end
