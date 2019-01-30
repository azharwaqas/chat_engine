class NewChatJob < ApplicationJob
  queue_as :default

  def perform(params)
    @conversation = params
    @user_id = @conversation.recipient_id
    @user = User.find_by(id: @user_id)
    if @conversation.messages.first.read == nil 
      NewChatMailer.new_chat(@user).deliver_later
    end  
  end
end
