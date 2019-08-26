require 'minitest/autorun'
require_relative '../person/person'

class PersonTest < Minitest::Test
    def test_one_is_one
        assert_equal 1, 1
    end

    def test_get_name_of_person
        assert_equal 'person', Person.new('person', 18).name
    end  

    def test_get_age_of_person
        assert_equal 18, Person.new('person', 18).age
    end

    def test_set_name_of_person
        person = Person.new('person', 18)
        person.name = 'new name'
        assert_equal 'new name', person.name
    end
      
    def test_set_age_of_person
        person = Person.new('person', 18)
        person.age = 20
        assert_equal 20, person.age
    end
    
    def test_if_person_is_major?
        assert_equal true, Person.new('person', 18).is_major?
    end

    def test_unless_person_is_major?
        assert_equal false, Person.new('person', 17).is_major?
    end
      
end

