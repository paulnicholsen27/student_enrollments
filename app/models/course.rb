class Course

    attr_accessor :name, :department

    @@all = []

    def initialize(name, department)
        @name, @department = name, department
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_department(department)
        Course.all.select {|course| course.department == department}
    end

    def enrollments
        # this method is not necessary, but is a convenient
        # helper method for the `courses` method
        Enrollment.all.select {|enrollment| enrollment.course == self}
    end

    def students
        self.enrollments.collect {|enrollment| enrollment.student}

    end

end