class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new chat: @chat
  end
end
