import requests as r
domain = "cloudsearch.cf"
headers = {"User-Agent": "CloudSearch API request", "domain": domain }
base = "https://cloudsearch.cf/"
path = "/api/endpoint.php"
resp = r.post(base+path, headers, verify=False)
print(resp.text)

