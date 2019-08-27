require 'minitest/autorun'
require_relative '../metric/metric'

class MetricTest < Minitest::Test
    def test_one_is_one
        assert_equal 1, 1
    end

	def test_get_value_of_metric
		assert_equal 10.0, Metric.new(10.0, 'm').value    	
	end

	def test_get_unit_of_metric
		assert_equal 'm', Metric.new(18.0, 'm').unit    	
	end

	def test_set_value_of_metric
		metric = Metric.new(10.0, 'm')
		metric.value = 20.0
		assert_equal 20.0, metric.value
	end

	def test_set_unit_of_metric
		metric = Metric.new(10.0, 'm')
		metric.unit = 'cm'
		assert_equal 'cm', metric.unit
    end

    ######## CONVERSION M
    
    def test_m_conversion_to_m
		assert_equal 1000.0, Metric.new(1000.0, 'm').to_m
    end

    def test_m_conversion_to_cm
		assert_equal 100000.0, Metric.new(1000.0, 'm').to_cm
    end
    
    def test_m_conversion_to_km
		assert_equal 1.0, Metric.new(1000.0, 'm').to_km
    end
    
    def test_m_conversion_to_in
		assert_equal 39370.0, Metric.new(1000.0, 'm').to_in
    end

    def test_m_conversion_to_ft
		assert_equal 3280.8, Metric.new(1000.0, 'm').to_ft
    end

    def test_m_conversion_to_yd
		assert_equal 1093.6, Metric.new(1000.0, 'm').to_yd
    end

    def test_m_conversion_to_mi
		assert_equal 0.6214, Metric.new(1000.0, 'm').to_mi
    end

    ######## CONVERSION cm
    
    def test_cm_conversion_to_m
		assert_equal 100.0, Metric.new(10000.0, 'cm').to_m
    end

    def test_cm_conversion_to_cm
		assert_equal 10000.0, Metric.new(10000.0, 'cm').to_cm
    end
    
    def test_cm_conversion_to_km
		assert_equal 0.1, Metric.new(10000.0, 'cm').to_km
    end
    
    def test_cm_conversion_to_in
		assert_equal 3937.0, Metric.new(10000.0, 'cm').to_in
    end

    def test_cm_conversion_to_ft
		assert_equal 328.08, Metric.new(10000.0, 'cm').to_ft
    end

    def test_cm_conversion_to_yd
		assert_equal 109.36, Metric.new(10000.0, 'cm').to_yd
    end

    def test_cm_conversion_to_mi
		assert_equal 0.0621, Metric.new(10000.0, 'cm').to_mi
    end

    ######## CONVERSION KM
    
    def test_km_conversion_to_m
		assert_equal 10000.0, Metric.new(10.0, 'km').to_m
    end

    def test_km_conversion_to_cm
		assert_equal 1000000.0, Metric.new(10.0, 'km').to_cm
    end
    
    def test_km_conversion_to_km
		assert_equal 10.0, Metric.new(10.0, 'km').to_km
    end
    
    def test_km_conversion_to_in
		assert_equal 393700.0, Metric.new(10.0, 'km').to_in
    end

    def test_km_conversion_to_ft
		assert_equal 32808.0, Metric.new(10.0, 'km').to_ft
    end

    def test_km_conversion_to_yd
		assert_equal 10936.0, Metric.new(10.0, 'km').to_yd
    end

    def test_km_conversion_to_mi
		assert_equal 6.2137, Metric.new(10.0, 'km').to_mi
    end

    ######## CONVERSION IN
    
    def test_in_conversion_to_m
		assert_equal 0.508, Metric.new(20.0, 'in').to_m
    end

    def test_in_conversion_to_cm
		assert_equal 50.8, Metric.new(20.0, 'in').to_cm
    end
    
    def test_in_conversion_to_km
		assert_equal 0.0005, Metric.new(20.0, 'in').to_km
    end
    
    def test_in_conversion_to_in
		assert_equal 20.0, Metric.new(20.0, 'in').to_in
    end

    def test_in_conversion_to_ft
		assert_equal 1.6666, Metric.new(20.0, 'in').to_ft
    end

    def test_in_conversion_to_yd
		assert_equal 0.5555, Metric.new(20.0, 'in').to_yd
    end

    def test_in_conversion_to_mi
		assert_equal 0.0003, Metric.new(20.0, 'in').to_mi
    end

    ######## CONVERSION ft
    
    def test_ft_conversion_to_m
		assert_equal 0.508, Metric.new(20.0, 'in').to_m
    end

    def test_ft_conversion_to_cm
		assert_equal 50.8, Metric.new(20.0, 'in').to_cm
    end
    
    def test_ft_conversion_to_km
		assert_equal 0.0005, Metric.new(20.0, 'in').to_km
    end
    
    def test_ft_conversion_to_in
		assert_equal 20.0, Metric.new(20.0, 'in').to_in
    end

    def test_ft_conversion_to_ft
		assert_equal 1.6666, Metric.new(20.0, 'in').to_ft
    end

    def test_ft_conversion_to_yd
		assert_equal 0.5555, Metric.new(20.0, 'in').to_yd
    end

    def test_ft_conversion_to_mi
		assert_equal 0.0003, Metric.new(20.0, 'in').to_mi
    end

end
