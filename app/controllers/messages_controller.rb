class MessagesController < ApplicationController
    before_action :set_chatroom
    # before_action :authenticate_user!
    skip_before_action :verify_authenticity_token


    def create
        message = @chatroom.messages.new(message_params)
        message.user = current_user

        message.save
        redirect_to @chatroom
    end

    def destroy
        @message = @chatroom.messages.find(params[:id])
        @message.destroy
        redirect_to @chatroom
    end

    private

    def set_chatroom
        @chatroom = Chatroom.find(params[:chatroom_id])
    end

    def message_params
        params.require(:message).permit(:body)
    end

end
