require "./restit/*"
require "./handlers/*"
require "http/server"

server = HTTP::Server.new(9000, [
    HTTP::ErrorHandler.new, 
    HTTP::LogHandler.new,
    Handlers::MethodHandler.new,
])

puts "Listening on port #{server.@port}"
server.listen
