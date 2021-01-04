class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :caption
      t.string :img_url
      t.integer :like
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
