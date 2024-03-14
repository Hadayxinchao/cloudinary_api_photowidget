require 'pusher'

pusher = Pusher::Client.new(
  app_id: ENV["pusher_app_id"],
  key: ENV["pusher_key"],
  secret: ENV["pusher_secret"],
  cluster: 'ap1',
  encrypted: true
)

pusher.trigger('my-channel', 'my-event', {
  message: 'hello world'
})
