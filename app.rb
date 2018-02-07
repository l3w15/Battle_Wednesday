require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = { name: params[:Player1], hp: 100 }
    session[:player2] = { name: params[:Player2], hp: 100 }
    # session[:names] = [params[:Player1], params[:Player2]]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end


end
