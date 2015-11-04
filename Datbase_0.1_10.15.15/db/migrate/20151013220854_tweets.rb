class Tweets < ActiveRecord::Migration
  def up
    create_table :tweets do |t|
      t.text :content
      t.date :created
      t.integer :sender_id
  end
end
  def down
  drop_table :tweets
end
end
