require 'rest-client'

post = RestClient.post('https://cloudsearch.cf/api/endpoint.php' {'domain: cloudsearch.cf' })

post.code
