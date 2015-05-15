require "./restit/*"
require "./handlers/*"
require "http/server"

server = HTTP::Server.new(8080, Handlers::HelloHandler.new)

puts "Listening on port #{server.@port}"
server.listen
