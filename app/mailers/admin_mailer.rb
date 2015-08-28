class AdminMailer < ActionMailer::Base
  default to: "sanokebab@gmail.com",
  from: "from@example.com"

  def sent(contact)
    @contact = contact
    
    mail(subject: "There was a contact")
    
  end
end
