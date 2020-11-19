class AddRoleToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :role, :integer, default: 0
  end
end
