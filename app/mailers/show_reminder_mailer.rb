class ShowReminderMailer < ApplicationMailer

	def send_show_reminder(show)
		@show = show
		mail(:to => "user@test.com", :subject => "Your show is ready to start")
	end
end
