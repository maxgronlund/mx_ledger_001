class AddUuidToPermissions < ActiveRecord::Migration[5.2]
  def change
    add_column :permissions, :uuid, :uuid
  end
end
