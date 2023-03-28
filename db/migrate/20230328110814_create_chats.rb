# frozen_string_literal: true

class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.string :name, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.index %i[user_id name], unique: true

      t.timestamps
    end
  end
end
