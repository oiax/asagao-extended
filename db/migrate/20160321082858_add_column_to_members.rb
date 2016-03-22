class AddColumnToMembers < ActiveRecord::Migration
  def change
    add_column :members, :other_job, :string
  end
end
