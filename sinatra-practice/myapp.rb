require 'sinatra'

get '/users' do
    erb :users
end

post '/users' do
  @name    = params['name'] #インスタンス変数に取得値代入
  @email   = params['email']
  @password = params['password']
  erb :users/confirm #URL不変で内容のみ変える
end