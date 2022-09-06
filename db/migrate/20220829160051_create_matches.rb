class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :status
      t.boolean :block, default: false
      t.references :male, null: false
      t.references :female, null: false
      t.references :match_maker, null: false

      t.timestamps
    end
  end
end
