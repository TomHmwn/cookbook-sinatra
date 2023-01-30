require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

# set :bind, ENV["HOST_IP"]
# set :port, ENV["HOST_PORT"]
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

get "/" do
  "Hello world!"
end
