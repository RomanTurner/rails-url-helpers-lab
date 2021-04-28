Rails.application.routes.draw do
resources :students, only: [:index, :show] 
get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end


#* singuluar resource examples: 
# Passing a string to 'to:' will expect a controller#action format. 
# Passing a symbol to the to: option should be replaced with "action: "
# When using a string witout the # the to: 