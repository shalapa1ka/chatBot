# frozen_string_literal: true

class ChatsMessages < ApplicationRecord
  belongs_to :chat
  belongs_to :message
end
