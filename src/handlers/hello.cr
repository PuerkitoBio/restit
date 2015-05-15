require "http"

module Handlers
    class HelloHandler < HTTP::Handler
        def call(req)
            HTTP::Response.ok("text/plain", "Hello!")
        end
    end
end
