require 'minitest/autorun'
require_relative '../metric/metric'

class MetricTest < Minitest::Test
    def test_one_is_one
        assert_equal 1, 1
    end
end
