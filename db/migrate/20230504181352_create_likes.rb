# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :posts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
