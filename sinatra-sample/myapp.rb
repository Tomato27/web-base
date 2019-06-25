require 'sinatra'

get '/contacts' do
    erb :contacts
end

get '/a' do #ルーティングここから
  erb :a
end #ルーティングここまで

get '/b' do
  erb :b
end

get '/c' do
  erb :c
end

post '/a' do
  #puts(params) paramで値を取得し全要素を出力
  #puts(params['name'])このように各要素出力も可
  @name    = params['name'] #インスタンス変数に取得値代入
  @email   = params['email']
  @content = params['content']
  erb :a
end

post '/contacts' do
  @name    = params['name'] #インスタンス変数に取得値代入
  @email   = params['email']
  @content = params['content']
  erb :confirm #URL不変で内容のみ変える
end