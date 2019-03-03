require 'net/http'
require 'uri'

uri = URI.parse("https://cloudsearch.cf/api/endpoint.php")
request = Net::HTTP::Post.new(uri)
request.set_form_data(
  "domain" => "cloudsearch.cf",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

puts response.body
