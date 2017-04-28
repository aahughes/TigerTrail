Rails.application.routes.draw do
  
  
  get "schedules/registeredCoursesJSON" => "schedules#registeredCoursesJSON"
  get "schedules/tempCoursesJSON" => "schedules#tempCoursesJSON"


  get "courses/add/:id" => "courses#add", as: "add_course"
  get "schedules/:schedule_id/courses/:course_id" => "courses#remove", as: "remove_course"


  get "schedules/myschedule" => "schedules#myschedule", as: "my_schedule"

  post "schedules/register" => "courses#register", as: "register_course"

  resources :schedules
  get "courses/search" => "courses#search", as: "search"
  get "courses/results" => "courses#results"

  resources :days
  devise_for :students


  # Sends user opening the app to their schedule or to login page if not logged in
	root to: "schedules#myschedule"

  resources :courses
  resources :semesters
  resources :instructors
  resources :statuses
  resources :buildings
  resources :campus
  resources :subjects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
