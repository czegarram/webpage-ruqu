ActionMailer::Base.perform_deliveries = true 
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => "smtp-mail.outlook.com",
	:port => 587,
	:domain => "ruqu.pe",
	:user_name => "cesar.zegarra@ruqu.pe",
	:password => "maximo147",
	:authentication => "plain",
	:enable_starttls_auto => true
}
