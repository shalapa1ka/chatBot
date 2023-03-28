class MessagesController < ApplicationController
  before_action :set_chat, only: %i[new create]

  def new
    @message = @chat.messages.build
  end

  def create
    @message = @chat.messages.create(message_params)
    redirect_to chat_path(@chat)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end
end
