require 'sinatra'
require 'sinatra/reloader'

get '/:name' do |n|
    # "hello world, #{params[:name]}"
    @name = n
    erb :index
end

get '/' do
    erb :index
    # "hello world"
end

# get '/from/*/to/*' do |f,t|
#     "from #{f} to #{t}"
# end

get %r{/users/([0-9]*)} do |i|
    "user id = #{i}"
end

