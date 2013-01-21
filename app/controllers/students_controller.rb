class StudentsController < ApplicationController

  # Support a url like this:
  # http://localhost:3000/students?section=pm

  def index
    if params["section"] != nil
      user_section = params["section"]
      @students = Student.fetch(user_section)
    else
      am_array = Student.fetch("am")
      pm_array = Student.fetch("pm")
      @students = am_array + pm_array
    end
  end

  def morning
    @students = Student.fetch("am")
    @color = params["color"]
  end

  def afternoon
    @students = Student.fetch("pm")
  end

end
