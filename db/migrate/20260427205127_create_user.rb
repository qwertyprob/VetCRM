class CreateUser < ActiveRecord::Migration[8.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :phone, null: false, index: { unique: true }
      t.integer :role, null: false, default: 0
      t.string :encrypted_password, null: false
      t.datetime :confirmed_at
      t.timestamps
    end
  end
end
