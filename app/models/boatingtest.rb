
class BoatingTest

  attr_accessor :student, :test_name, :test_status, :instructor

  @@all = []

  def initialize(student, test_name, test_status, instructor)
    @student = student #obj
    @test_name = test_name
    @test_status = test_status
    @intructor = instructor #obj
    @@all << self
  end

  def self.all #works!
    @@all
  end

end
