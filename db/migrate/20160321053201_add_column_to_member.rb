class AddColumnToMember < ActiveRecord::Migration
  def change
    add_column :members, :job, :integer
  end
end
