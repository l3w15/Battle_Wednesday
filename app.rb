require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:names] = [params[:Player1], params[:Player2]]
    #
    # @player1 = params[:Player1]
    # @player2 = params[:Player2]
    # session[:names] = [@player1, @player2]
    p session
    p session[:names]
    redirect '/play'
  end

  get '/play' do
    p session[:names]
    @player1, @player2 = session[:names]
    p @player1
    erb(:play)
  end


end
