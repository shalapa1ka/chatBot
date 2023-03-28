class MessagesController < ApplicationController

  def create
    @message = Current.user.messages.new(message_params)
    unless @message.save
      @chat = @message.chat
      render 'chats/show'
    end

    flash.now[:success] = 'Message sent!'
  end

  private

  def message_params
    params.require(:message).permit(:body, :chat_id)
  end
end
