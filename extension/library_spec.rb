require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'library')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new([
      { 
        title: "lord_of_the_rings",
        rental_details: { 
         student_name: "Jeff", 
         date: "01/12/16"
        }
      }, 
      
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Paul",
          date: "03/02/17"
        }
      },    

      {
        title: "learn_to_program",
        rental_details: {
          student_name: "Sam",
          date: "24/04/17"
        }
      }
     ])
  end

  def test_get_books
    assert_equal([
      { 
        title: "lord_of_the_rings",
        rental_details: { 
         student_name: "Jeff", 
         date: "01/12/16"
        }
      }, 
      
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Paul",
          date: "03/02/17"
        }
      },    

      {
        title: "learn_to_program",
        rental_details: {
          student_name: "Sam",
          date: "24/04/17"
        }
      }
     ], @library.get_books)
  end

  def test_get_book
    assert_equal({
        title: "learn_to_program",
        rental_details: {
          student_name: "Sam",
          date: "24/04/17"
        }
      }, @library.get_book("learn_to_program"))
  end

  def test_get_rental_details
    assert_equal({
          student_name: "Paul",
          date: "03/02/17"
        }, @library.get_rental_details("harry_potter"))
  end

  def test_add_book
    @library.add_book("the_hunger_games")
    assert_equal({
      title: "the_hunger_games",
      rental_details: {
        student_name: "",
        date: ""
      }
    }, @library.get_book("the_hunger_games"))
  end

  def test_add_rental_details
    @library.add_rental_details("learn_to_program", "Mel", "22/05/17")
    assert_equal({
          student_name: "Mel",
          date: "22/05/17"
        }, @library.get_rental_details("learn_to_program"))
  end
end