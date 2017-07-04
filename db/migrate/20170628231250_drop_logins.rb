class DropLogins < ActiveRecord::Migration[5.0]
  def change
    drop_table :Logins
  end
end
