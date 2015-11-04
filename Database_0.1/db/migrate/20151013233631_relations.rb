class Relations < ActiveRecord::Migration
    def up
      create_table :relations do |t|
        t.integer :user_id
        t.integer :follower_id
    end
  end
  def down
    drop_table :relations
  end
end
