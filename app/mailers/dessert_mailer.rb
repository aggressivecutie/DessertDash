class DessertMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.dessert_mailer.dd_record_notification.subject
  #
  def dd_record_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
  def new_user_notification(user)
    @user = user
    mail to: @user.email, subject: "Welcome User"
  end

end
