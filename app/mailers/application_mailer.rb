class ApplicationMailer < ActionMailer::Base
  # default from: 'swaathi16@gmail.com'
  layout 'mailer'

  def send_it(email)
    @email = email

    mail(
      from: email.user.email,
      to: email.receiver,
      subject: email.subject
    )
  end
end
