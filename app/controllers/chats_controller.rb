class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @is_load = true
    @chat = Chat.find(params[:id])
    @message = Message.new chat: @chat
  end

  def create
    @chat = Chat.new name: "Chat #{Chat.last.id + 1}", user: Current.user
    if @chat.save!
      flash.now[:success] = 'Chat created!'
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to chats_path
  end
end
