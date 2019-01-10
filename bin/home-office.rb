require 'net/http'
require 'uri'
require 'json'

homeText = ["ma itthonrol, ", "ma homeoffice, ", "ma itthonrol vagyok, "]
homeText = homeText.shuffle

zText = ["Z megengedte", "Z engedelyevel", "Z tud rola"]
zText = zText.shuffle

uri = URI.parse("https://hooks.slack.com/services/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")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/json"
request.body = JSON.dump({
  "text" => homeText[0] + zText[0]
})

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body