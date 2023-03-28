# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :body, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :chat, null: false, foreign_key: true
      t.index %i[user_id chat_id]

      t.timestamps
    end
  end
end
