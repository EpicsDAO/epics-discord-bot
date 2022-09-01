require "discordrb"
require "dotenv/load"

token = ENV.fetch("TOKEN", nil)
server_id = ENV.fetch("SERVER_ID", nil)
welcome_bot_id = ENV.fetch("WELCOME_BOT_IT", nil)
bot_token = "Bot #{token}"

bot = Discordrb::Bot.new(token:)
bot.message do |event|
  user_data = Discordrb::API::User.resolve(bot_token, event.user.id)
  json = JSON.load(user_data)
  if event.user.id == welcome_bot_id && event.message.to_s.include?("welcome to") && json["username"].to_s.include?("Announcement")
    ban_user_id = event.message.to_s.match(/@(.+)>/)[1]
    Discordrb::API::Server.ban_user(bot_token, server_id, ban_user_id, 7, "suspicious")
    event.respond("Banned suspicious account🤖")
  end
end

bot.run
