class ContactMailer < ApplicationMailer
  default to: "carterfotografia@gmail.com"

  def contact_email(contact_params)
    @contact = contact_params
    mail(from: @contact[:email], subject: "New contact by site")
  end
end
