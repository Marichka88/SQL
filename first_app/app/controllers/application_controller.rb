class Api::ExamplePagesController < ApplicationController
  def summer_action 
    render json: {message: "Hello, world"}
  end  

   def winter_action
     render json: [ "n", "a" ,"m", "e"]
   end 

   def spring_action 
    renter json: [message: "Nice weather"]
   end
end
