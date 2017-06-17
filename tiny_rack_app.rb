require "rack"

app = Proc.new { |env| [200, {}, ["I respond to all request"]]}

Rack::Handler::WEBrick.run app, Port: 9292