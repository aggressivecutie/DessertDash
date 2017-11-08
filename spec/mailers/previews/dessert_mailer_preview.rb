# Preview all emails at http://localhost:3000/rails/mailers/dessert_mailer
class DessertMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/dessert_mailer/dd_record_notification
  def dd_record_notification
    DessertMailerMailer.dd_record_notification
  end

end
