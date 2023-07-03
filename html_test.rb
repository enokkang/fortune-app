require "http"

response = HTTP.get("http://localhost:3000/bottles")

data = response.parse(:json)["bottles"]

puts data
