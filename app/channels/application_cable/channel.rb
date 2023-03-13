module ApplicationCable
  class Channel < ActionCable::Channel::Base
    ChatroomsChannel.broadcast_to(@chatroom, @messsage)
  end
end
