class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :username
      t.string :password_digest
      t.string :email_address
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
