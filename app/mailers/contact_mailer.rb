class ContactMailer < ActionMailer::Base
  default from: "cesar.zegarra@ruqu.pe"

	def contact_email(user) 
		mail :to => user, :from => "cesar.zegarra@ruqu.pe", :subject => "Test"
	end
end
