class Enrollment

    attr_accessor :student, :course

    def initialize(student, course)
        @student, @course = student, course
    end

end