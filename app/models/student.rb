require 'open-uri'

class Student
  attr_accessor "name"
  attr_accessor "photo_url"
  attr_accessor "section"
  attr_accessor "twitter"

  def Student.fetch(section)
    url = "http://tslwebdev.herokuapp.com/#{section}.json"
    json_string = open(url).read
    student_hashes = JSON.parse(json_string)

    students = Array.new
    student_hashes.each do |student_hash|
      s = Student.new(student_hash["name"],
                      student_hash["section"],
                      student_hash["photo_url"],
                      student_hash["twitter"])
      students << s
    end
    return students
  end


  def initialize(the_name, the_section, pic_url, handle)
    @name = the_name
    @section = the_section
    @photo_url = pic_url
    @twitter = handle
  end
end
