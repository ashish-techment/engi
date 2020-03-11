require 'sidekiq-scheduler'
class ReminderWorker
  include Sidekiq::Worker

  def perform(*args)
    Show.send_reminder
  end
end
