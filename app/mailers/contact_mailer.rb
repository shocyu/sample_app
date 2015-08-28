class ContactMailer < ActionMailer::Base
  default cc: "sanokebab@gmail.com",
          from: "from@example.com"

  def sent(contact)

    @contact = contact
    
    mail(to: @contact.email, subject: "Thank you for your contact!")
  end
  
end
