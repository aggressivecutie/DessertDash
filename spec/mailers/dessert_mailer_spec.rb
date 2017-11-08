require "rails_helper"

RSpec.describe DessertMailer, type: :mailer do
  describe "dd_record_notification" do
    let(:mail) { DessertMailer.dd_record_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("Dd record notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
