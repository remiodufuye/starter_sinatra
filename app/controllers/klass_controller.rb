class KlassController < Sinatra::Base

    set :views , "app/views/klass"
    set :method_override, true

    get '/classes' do 
        @klass = Klass.all
        erb :index
    end 

    get '/classes/new' do
        erb :new
    end 

    get '/classes/:id' do 
        @klass = Klass.find(params[:id])
        erb :show
    end 

    post '/classes' do 
        klass = Klass.create(name: params[:name])
        redirect "/classes/#{klass.id}"
    end 

    patch '/classes/:id' do 
        klass = Klass.find(params[:id])
        klass.name = params[:name]
        klass.save
        redirect "/classes/#{klass.id}" 
    end 

    get '/classes/:id/edit' do 
        @klass = Klass.find(params[:id])
        erb :edit
    end 

    delete '/classes/:id' do 
        klass = Klass.find(params[:id])
        klass.destroy
        redirect '/classes'
    end 


end
