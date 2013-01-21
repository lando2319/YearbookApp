require 'open-uri'

class StudentsController < ApplicationController

  def morning
    url = "http://tslwebdev.herokuapp.com/am.json"
    json_string = open(url).read

    @students = JSON.parse(json_string)
  end

  def afternoon

  end

end
