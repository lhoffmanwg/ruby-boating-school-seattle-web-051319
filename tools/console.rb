require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

##Instructor objects
kev = Instructor.new("Kev")
sarah = Instructor.new("Sarah")
laura = Instructor.new("Laura")
tyler = Instructor.new("Tyler")

##Student objects
roscoe = Student.new("Roscoe")
shadow = Student.new("Shadow")
baby = Student.new("Baby")
crispin = Student.new("Crispin")

# ##Boating_test objects
t1 = BoatingTest.new(roscoe, "Mod1", "failed", kev)
t2 = BoatingTest.new(baby, "Mod1", "passed", sarah)
t3 = BoatingTest.new(roscoe, "Mod2", "passed", laura)
t4 = BoatingTest.new(shadow, "Mod1", "failed", kev)
t5 = BoatingTest.new(crispin, "Mod4", "passed", sarah)
t6 = BoatingTest.new(roscoe, "Mod3", "failed", kev)
t7 = BoatingTest.new(baby, "Mod2", "failed", tyler)
t8 = BoatingTest.new(shadow, "Mod2", "failed", kev)
t9 = BoatingTest.new(crispin, "Mod5", "passed", sarah)
t10 = BoatingTest.new(roscoe, "Mod4", "failed", kev)
t11 = BoatingTest.new(baby, "Mod3", "failed", tyler)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
