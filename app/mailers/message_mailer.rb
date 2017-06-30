 class MessageMailer < ActionMailer::Base

  default from: "fidansaid@gmail.com"
  default to: "fidansaid@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end