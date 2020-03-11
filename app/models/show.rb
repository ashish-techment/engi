class Show < ApplicationRecord
  belongs_to :channel

  def self.send_reminder
		Show.all.each do |show|
			if show.show_time.strftime("%Y%m%d%H%M") == (DateTime.now + 30.minutes).strftime("%Y%m%d%H%M")
				ShowReminderMailer.send_show_reminder(show).deliver
			end
		end
	end
end
