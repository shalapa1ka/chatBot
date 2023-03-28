class MessagesController < ApplicationController

  def create
    @chatGPT = User.chat_gpt
    @message = Current.user.messages.build(message_params)
    @response = @chatGPT.messages.build body: ChatgptService.call(@message.body), chat_id: @message.chat_id

    unless @message.save && @response.save
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
