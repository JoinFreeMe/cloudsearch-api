require "net/http"
require "uri"

uri = URI.parse("http://cloudsearch.cf/api/endpoint.php")

# Shortcut
response = Net::HTTP.post_form(uri, {"domain" => "cloudsearch.cf"})

# Full control
http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Post.new(uri.request_uri)
request.set_form_data({"domain" => "cloudsearch.cf"})

# Tweak headers, removing this will default to application/x-www-form-urlencoded
request["Content-Type"] = "application/json"

response = http.request(request)

puts response.body
