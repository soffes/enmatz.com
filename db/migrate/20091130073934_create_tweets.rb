class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :in_reply_to_screen_name
      t.integer :in_reply_to_status_id
      t.integer :in_reply_to_user_id
      t.string :source
      t.string :text, :limit => 140
      t.string :translated_text
      t.boolean :truncated, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
