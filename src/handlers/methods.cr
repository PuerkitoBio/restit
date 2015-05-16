module Handlers
    class MethodHandler < HTTP::Handler
        def call(req)

            parts = [] of String
            if path = req.uri.path
                parts = path.split('/')
            end

            case req.method
            when "GET", "HEAD"
                HTTP::Response.ok("text/plain", "#{req.method} #{parts}")

            when "POST"
                HTTP::Response.ok("text/plain", "#{req.method} #{parts}")

            when "PUT"
                HTTP::Response.ok("text/plain", "#{req.method} #{parts}")

            when "DELETE"
                HTTP::Response.ok("text/plain", "#{req.method} #{parts}")
            else
                HTTP::Response.ok("text/plain", "#{req.method} #{parts}")
            end
        end
    end
end

