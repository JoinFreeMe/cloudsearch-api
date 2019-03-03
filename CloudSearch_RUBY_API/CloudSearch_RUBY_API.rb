require 'rest-client'

post = RestClient.post("https://cloudsearch.cf/api/endpoint.php", {User-Agent: "CloudSearch API bot" domain: "cloudsearch.cf"})

post.code
