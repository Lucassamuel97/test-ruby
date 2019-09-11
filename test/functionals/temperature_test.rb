require_relative '../test_helper'
require_relative '../../app'

class TemperatureMetricTest < Minitest::Test
	
	def app
		App
	end

	def test_one_is_one
		assert_equal 1, 1
	end

	def test_get_celsius_to_celsius
		get '/metrics/temperature/c/1/c'
		assert_equal 200, last_response.status
	end

	def test_get_fahrenheit_to_celsius
		get '/metrics/temperature/f/1/c'
		assert_equal 200, last_response.status
	end
	
	def test_get_kelvin_to_celsius
		get '/metrics/temperature/k/1/c'
		assert_equal 200, last_response.status
	end
	
	def test_get_kelvin_to_kelvin
		get '/metrics/temperature/k/1/k'
		assert_equal 200, last_response.status
	end

	def test_get_celsius_to_kelvin
		get '/metrics/temperature/c/1/k'
		assert_equal 200, last_response.status
	end
	
	def test_get_fahrenheit_to_kelvin
		get '/metrics/temperature/f/1/k'
		assert_equal 200, last_response.status
	end
	
	def test_get_fahrenheit_to_fahrenheit
		get '/metrics/temperature/f/1/f'
		assert_equal 200, last_response.status
	end

	def test_get_kelvin_to_fahrenheit
		get '/metrics/temperature/k/1/f'
		assert_equal 200, last_response.status
	end
	
	def test_get_celsius_to_fahrenheit
		get '/metrics/temperature/c/1/f'
		assert_equal 200, last_response.status
	end
end
