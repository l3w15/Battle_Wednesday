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
    p session
    @player1 = session[:player1]
    @player2 = session[:player2]
    if session[:attack] == true
      @attack = "#{@player1[:name]} attacked #{@player2[:name]}"
    end
    p session[:attack]
    p @attack
    erb(:play)
  end

  post '/play' do
    session[:attack] = true #if params[:attack]
    redirect '/play'
  end


end
