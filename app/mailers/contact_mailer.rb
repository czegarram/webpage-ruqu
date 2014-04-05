class ContactMailer < ActionMailer::Base
  default from: "cesar.zegarra@ruqu.pe"

	def contact_email(user,name,email,subject,message) 
		@nombre=name
		@email=email
		@telefono=subject
		@mensaje=message
		mail :to => user, :from => "cesar.zegarra@ruqu.pe", :subject => "Test"
	end
end
