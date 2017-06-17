require "rack/handler/puma"

class AnotherRackApp
	def call (env)
		http_verb = env["REQUEST_METHOD"]
		path = env["PATH_INFO"]
		status = 200
		headers = {"Content-Type" => "text/html", "Referer" => "hay"}
		body = ["got #{http_verb} <b>request</b> from <strong>#{path}</strong> path"]
		[status, headers, body]
	end
end
app = AnotherRackApp.new
Rack::Handler::Puma.run app, Port: 9292