require_relative '../test_helper'
require_relative '../../app'

class PersonTest < Minitest::Test

  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
  end

  def test_get_is_major
    get '/person/19/is_major'
    assert_equal 200, last_response.status
  end

  def test_get_frank_says
    get '/frank-says'
    assert_equal 200, last_response.status
  end

end