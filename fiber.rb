# Fiber class documentation at http://ruby-doc.org/core-2.6/Fiber.html
require 'fiber'
class Bran
# resume/yield test
  def regular_fiber
    f = Fiber.new do
      puts
      puts "Here's some standard fiber!"
      Fiber.yield
      puts "Here's a little more fiber!"
      Fiber.yield
      puts "Ruh roh.  Too much fiber!"
    end
    f.resume
    puts "First fiber level test..."
    f.resume
    puts "Second fiber level test..."
    f.resume
    puts "Gotta go!"
  end
# yield value test
  def mega_fiber
    mf = Fiber.new do
      puts
      puts "Get ready for some serious fiber!"
      Fiber.yield 2+2
      puts "Here's another dose of mega fiber!"
      Fiber.yield 3*3
    end
    puts "+#{mf.resume + 8} fiber points (fp)!"
    puts "+#{mf.resume + 3} fiber points (fp)!"
    puts "+24fp = 4 cups of coffee!"
  end
# transfer test using require 'fiber' above
  def fiber_combo
    fiber1 = Fiber.new do |fiber2_arg|
      puts "With a little more fiber..."
      puts "The result = Fiber x #{1 + fiber2_arg}!"
    end
    fiber2 = Fiber.new do
      puts
      puts "If you combine a little fiber..."
      fiber1.transfer 1
    end
    fiber2.resume
    puts "Woot!"
  end
end
cereal = Bran.new
cereal.regular_fiber
cereal.mega_fiber
cereal.fiber_combo
