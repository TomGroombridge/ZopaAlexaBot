require 'sinatra'
require 'alexa_rubykit'


post '/' do
  query_json = JSON.parse(request.body.read.to_s)
  query = AlexaRubykit.build_request(query_json)
  p "this is the query #{query}"
  p 'this is the request being hit!!!'
  p "this is the query type #{query.type}"

  reply = AlexaRubykit::Response.new

  if (query.type == 'LAUNCH_REQUEST')
    reply.add_speech('You can now access your Zopa account')
  end

  if (query.type == 'INTENT_REQUEST')
    p "#{query.slots}"
    p "#{query.name}"

    case query.name
    when "CheckBalance"
      reply.add_speech("Your Zopa balance is currently £12,580")
    else
      reply.add_speech("Sorry we can't give you that information")
    end
  end

  response.body = reply.build_response
end

