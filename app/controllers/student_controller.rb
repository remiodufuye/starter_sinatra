class StudentController < Sinatra::Base

    set :views , "app/views/student"
    set :method_override, true

    
    get '/students' do 
        @student = Student.all
        erb :index
    end 

    get '/students/new' do
        erb :new
    end 

    get '/students/:id' do 
        @student = Student.find(params[:id])
        erb :show
    end 

    post '/students' do 
        student = Student.create(name: params[:name])
        redirect "/students/#{student.id}"
    end 

    patch '/students/:id' do 
        student = Student.find(params[:id])
        student.name = params[:name]
        student.save
        redirect "/students/#{student.id}" 
    end 

    get '/students/:id/edit' do 
        @student = Student.find(params[:id])
        erb :edit
    end 

    delete '/students/:id' do 
        student = Student.find(params[:id])
        student.destroy
        redirect '/students'
    end 


end
