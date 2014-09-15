def whyrun_supported?
  true
end

use_inline_resources

action :say do
  options = {}
  options["channel"]    = new_resource.channel     if new_resource.channel
  options["username"]   = new_resource.username    if new_resource.username
  options["icon_url"]   = new_resource.icon_url    if new_resource.icon_url
  options["icon_emoji"] = new_resource.icon_emoji  if new_resource.icon_emoji

  slack = Slackr.connect(node.slack.team, node.slack.api_key)

  slack.say(new_resource.message, options)
end
