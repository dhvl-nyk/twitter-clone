class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :user_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
