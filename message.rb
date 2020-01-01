require 'line/bot' 

to = ENV['LINE_TO']
text = "テストメッセージ"

line_client =  Line::Bot::Client.new { |config|
  config.channel_secret = ENV['LINE_BOT_CHANNEL_SECRET']
  config.channel_token = ENV['LINE_BOT_ACCESS_TOKEN']
}
#
messages = []
json_message = {
  type: 'text',
  text: text
}
messages.push json_message
json_message = {
  type: 'text',
  text: "メッセージ２"
}
messages.push json_message
##json_message = {
##  type: 'text',
##  text: "3"
##}
##messages.push json_message
##json_message = {
##  type: 'text',
##  text: "4"
##}
##messages.push json_message
##json_message = {
##  type: 'text',
##  text: "5"
##}
##messages.push json_message

res = line_client.push_message(to, messages)
puts res.body
