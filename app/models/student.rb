class Student

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_name(name)
        Student.all.find {|student| student.name == name}
    end

    def enrollments
        Enrollment.all.select {|enrollment| enrollment.student == self}
    end

    def courses
        self.enrollments.collect {|enrollment| enrollment.course}
    end

    def take_course(course)
        Enrollment.new(self, course)
    end
end