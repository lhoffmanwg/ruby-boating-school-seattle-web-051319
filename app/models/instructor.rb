
class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name) #works!!
    returnTest = nil

    BoatingTest.all.select do |test_obj|
      if test_obj.student == student && test_obj.test_name == test_name
        test_obj.test_status = "passed"
        returnTest = test_obj
      end
    end
    if !returnTest
      returnTest = BoatingTest.new(student, test_name, "passed", self)
    end
    return returnTest
  end
    # should take in a student instance and test name. If there is a
    # `BoatingTest` whose name and student match the values passed in, this method should update the status
    # of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with
    #the student, that boat test name, and the status 'passed'. Either way, it should return the
    #`BoatingTest` instance.
  def fail_student(student, test_name)
    returnTest = nil

    BoatingTest.all.select do |test_obj|
      if test_obj.student == student && test_obj.test_name == test_name
        test_obj.status = "failed"
        returnTest = test_obj
      end
    end
      if !returnTest
        returnTest = BoatingTest.new(student, test_name, 'failed', self)
      end
      return returnTest

    #  should take in a student instance and test name. Like `#pass_student`, it
    # should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an
    # existing `BoatingTest`, it should create one with the name, the matching student, and the status
    # 'failed'
  end

end
