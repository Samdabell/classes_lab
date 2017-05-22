require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'codeclan_class')

class TestStudent < MiniTest::Test

  def setup()
    @student_1 = Student.new("Sam", 2)
    @student_2 = Student.new("John", 1)
  end

  def test_student_name()
    assert_equal("Sam", @student_1.get_name())
  end

  def test_student_cohort()
    assert_equal(2, @student_1.get_cohort())
  end  

  def test_set_student_name()
    @student_2.set_name("Chris")
    assert_equal("Chris", @student_2.get_name())
  end

  def test_set_student_cohort()
    @student_2.set_cohort(2)
    assert_equal(2, @student_2.get_cohort())
  end  

  def test_make_student_talk()
    assert_equal("I can talk!", @student_1.talk())
  end

  def test_favourite_programming_language()
    assert_equal("I love Ruby!", @student_1.fav_language("Ruby"))
  end
end