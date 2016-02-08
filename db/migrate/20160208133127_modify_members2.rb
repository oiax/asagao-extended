class ModifyMembers2 < ActiveRecord::Migration
  def change
    add_column :members, :occupation_number, :integer
    add_column :members, :occupation_name, :string
  end
end
