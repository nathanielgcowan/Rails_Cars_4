class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :car_id, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
