class CreateProfile < ActiveRecord::Migration[8.1]
  def change
    create_table :profiles, id: false do |t|
      t.uuid :user_id, null: false, primary_key: true  # user_id = PK
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :locale
      t.timestamps
    end
    add_foreign_key :profiles, :users, column: :user_id
  end
end
