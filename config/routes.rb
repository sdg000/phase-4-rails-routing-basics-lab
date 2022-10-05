Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # return all students
  get "/students", to: 'students#index'

  # return all students ordered by grade
  get "/students/grades", to: 'students#grades'

  #return student with highest grade
  get "/students/highest-grade", to: 'students#highest_grade'
end
