class FormsController < ApplicationController
  def new
    render 'form.html.erb'
  end

  def create
    @parameters = params
    render 'form.html.erb'
  end
end
