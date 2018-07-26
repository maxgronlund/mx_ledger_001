class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions, id: :uuid do |t|
      t.uuid :granted_to
      t.uuid :given_by
      t.hstore :permissions

      t.timestamps
    end
  end
end
