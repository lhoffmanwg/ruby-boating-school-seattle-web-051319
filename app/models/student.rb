

class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor) #works!
    BoatingTest.new(self, test_name, test_status, instructor)
    #should initialize a new boating test with a Student (Object), a
    #boating test name (String), a boating test status (String), and an Instructor (Object)
  end

  def self.find_student(first_name) #works!
    @@all.find do |test|
      test.first_name == first_name
    end
    #will take in a first name and output the student (Object) with that name
  end

  def grade_percentage #works!
    passed = 0

    ary = BoatingTest.all.select do |test|
      test.student == self
    end

    ary.collect do |tst|
      if tst.test_status == "passed"
        passed = passed + 1
      end
    end
    100 * (passed.to_f / ary.count)
  end
    #should return the percentage of tests that the student has passed, a
    #Float (so if a student has passed 3 / 9 tests that they've taken, this method should return
    #the Float `33.33`)
end
