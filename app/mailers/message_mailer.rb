class MessageMailer < ApplicationMailer
  default to: "Boshen Cui <boshen.cui@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
