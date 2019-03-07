class Enrollment

    attr_accessor :student, :course

    @@all = []

    def initialize(student, course)
        @student, @course = student, course
        @@all << self
    end

    def self.all 
        @@all 
    end

end