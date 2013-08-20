require 'sinatra'

if not ENV['REDIRECT_TARGET_URI']
  puts 'You need to set the environment variable REDIRECT_TARGET_URI to your target URI:'
  puts '$ heroku config:set REDIRECT_TARGET_URI=http://example.com'
  exit
end

get '/*' do
  redirect ENV['REDIRECT_TARGET_URI']
end
