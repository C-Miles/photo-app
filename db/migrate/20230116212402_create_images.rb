# frozen_string_literal: true

class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
