class StudentsController < ApplicationController

  def morning
    @students = Student.fetch("am")
  end

  def afternoon
    @students = Student.fetch("pm")
  end

end
