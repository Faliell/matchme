class AddForeignKeyToMatches < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :matches, :users, column: :male_id
    add_foreign_key :matches, :users, column: :female_id
    add_foreign_key :matches, :users, column: :match_maker_id
  end
end
