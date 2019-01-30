class NewChatMailer < ApplicationMailer
   def new_chat(user)
    @user = user

    mail(to: @user.email, subject: "Hey #{user.name} you have new Chat in Chat Engine")
  end
end
