require "slack-notify"
require 'clockwork'
require 'dotenv'
require 'active_support/time'
Dotenv.load
include Clockwork




@client = SlackNotify::Client.new(
  webhook_url: ENV['WEB_HOOK'],
  channel: "#general",
  username: "mybot",
  link_names: 1
)



 @client.notify("ok!!!!!!!!!!!!!")


every(3.minutes, @client.notify("ok!!!!!!!!!!!!!")) do
  @client.notify("ok!!!!!!!!!!!!!")
end
