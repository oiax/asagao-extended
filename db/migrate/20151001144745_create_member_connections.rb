class CreateMemberConnections < ActiveRecord::Migration
  def change
    create_table :member_connections do |t|
      t.references :follower, null: false
      t.references :followee, null: false

      t.timestamps null: false
    end

    add_index :member_connections, [ :follower_id, :followee_id ], unique: true
    add_index :member_connections, :followee_id
  end
end
