class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.references :male, null: false
      t.references :female, null: false

      t.timestamps
    end
    add_foreign_key :chatrooms, :users, column: :male_id
    add_foreign_key :chatrooms, :users, column: :female_id
  end
end
