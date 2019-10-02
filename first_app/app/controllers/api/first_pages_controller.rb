
  def summer_action 
    @summer_time = "summer now"
    render 'summer_view.json.jb'
  end  

  def winter_action
    @winter_time = "winter now"
     render 'winter_view.jb'
  end 

  def spring_action 
    @spring_time = "spring now"
    render 'spring_view.jb'
  end
end