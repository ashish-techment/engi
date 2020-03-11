# README

Its an simple application to show and search the shows by show-name and channel name, we can add show as a favorite or un-favorite as well.
This application will automatically send show time reminder before 30 minutes to start the show.

To Run the cron job in background:
1. We need to install and start the Redis-Server because without Redis.
2. Run the command "bundle exec sidekiq" to run the workers. 
