require 'open-uri'

class StudentsController < ApplicationController

  def morning
    url = "http://tslwebdev.herokuapp.com/am.json"
    json_string = open(url).read
    student_hashes = JSON.parse(json_string)

    @students = Array.new
    student_hashes.each do |student_hash|
      s = Student.new(student_hash["name"],
                      student_hash["twitter"],
                      student_hash["section"],
                      student_hash["photo_url"])

      @students << s
    end
  end

  def afternoon

  end

end
