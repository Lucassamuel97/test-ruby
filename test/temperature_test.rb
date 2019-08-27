require 'minitest/autorun'
require_relative '../temperature/temperature'

class TemperatureTest < Minitest::Test
	def test_one_is_one
		assert_equal 1, 1
	end

	def test_get_value_of_temperature
		assert_equal 10.0, Temperature.new(10.0, 'F').value    	
	end

	def test_get_unit_of_temperature
		assert_equal 'F', Temperature.new(18.0, 'F').unit    	
	end

	def test_set_value_of_temperature
		temp = Temperature.new(10.0, 'F')
		temp.value = 20.0
		assert_equal 20.0, temp.value
	end

	def test_set_unit_of_temperature
		temp = Temperature.new(10.0, 'K')
		temp.unit = 'C'
		assert_equal 'C', temp.unit
	end

	# fahrenheit tests

	def test_fahrenheit_conversion_to_kelvin
		assert_equal 260.9278, Temperature.new(10.0, 'F').to_kelvin
	end

	def test_fahrenheit_conversion_to_fahrenheit
		assert_equal 10.0, Temperature.new(10.0, 'F').to_fahrenheit
	end

	def test_fahrenheit_conversion_to_celsius
		assert_equal -12.2222, Temperature.new(10.0, 'F').to_celsius
	end

	# Celsius tests 

	def test_celius_conversion_to_kelvin
		assert_equal 293.15, Temperature.new(20.0, 'C').to_kelvin
	end

	def test_celius_conversion_to_fahrenheit
		assert_equal 68.0, Temperature.new(20.0, 'C').to_fahrenheit
	end

	def test_celius_conversion_to_celsius
		assert_equal 20.0, Temperature.new(20.0, 'C').to_celsius
	end

	# Celsius tests 

	def test_kelvin_conversion_to_kelvin
		assert_equal 30.0, Temperature.new(30.0, 'K').to_kelvin
	end

	def test_kelvin_conversion_to_fahrenheit
		assert_equal -405.67, Temperature.new(30.0, 'K').to_fahrenheit
	end

	def test_kelvin_conversion_to_celsius
		assert_equal -243.15, Temperature.new(30.0, 'K').to_celsius
	end
	
end
