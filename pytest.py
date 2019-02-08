import requests
r =  requests.get("127.0.0.1")
assert "Hello World" in r.text