class DropApiKeysTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :api_keys
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
