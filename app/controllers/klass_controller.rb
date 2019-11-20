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

    get '/classes/enroll' do
        @klass = Klass.all
        @student = Student.all
        erb :enroll
    end 

    get '/classes/:id' do 
        @klass = Klass.find(params[:id])
        erb :show
    end 

    post '/classes' do 
        klass = Klass.create(name: params[:name])
        redirect "/classes/#{klass.id}"
    end 

    post '/enroll' do 
        student = Student.find(params[:student_id])
        klass = Klass.find(params[:class_id])
        StudentKlass.create(student: student , klass: klass)
        redirect "/students/#{student.id}"
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
        klass.student_klasses.destroy_all
        klass.destroy
        redirect '/classes'
    end

end
