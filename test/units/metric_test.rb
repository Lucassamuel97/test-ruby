require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require_relative '../../metric/linear'

class LinearMetricTest < Minitest::Test
    def test_one_is_one
        assert_equal 1, 1
    end

	def test_get_value_of_metric
		assert_equal 10.0, LinearMetric.new(10.0, 'm').value    	
	end

	def test_get_unit_of_metric
		assert_equal 'm', LinearMetric.new(18.0, 'm').unit    	
	end

	def test_set_value_of_metric
		metric = LinearMetric.new(10.0, 'm')
		metric.value = 20.0
		assert_equal 20.0, metric.value
	end

	def test_set_unit_of_metric
		metric = LinearMetric.new(10.0, 'm')
		metric.unit = 'cm'
		assert_equal 'cm', metric.unit
    end

    ######## CONVERSION M
    
    def test_m_conversion_to_m
		assert_equal 1000.0, LinearMetric.new(1000.0, 'm').to_m
    end

    def test_m_conversion_to_cm
		assert_equal 100000.0, LinearMetric.new(1000.0, 'm').to_cm
    end
    
    def test_m_conversion_to_km
		assert_equal 1.0, LinearMetric.new(1000.0, 'm').to_km
    end
    
    def test_m_conversion_to_in
		assert_equal 39370.0, LinearMetric.new(1000.0, 'm').to_in
    end

    def test_m_conversion_to_ft
		assert_equal 3280.8, LinearMetric.new(1000.0, 'm').to_ft
    end

    def test_m_conversion_to_yd
		assert_equal 1093.6, LinearMetric.new(1000.0, 'm').to_yd
    end

    def test_m_conversion_to_mi
		assert_equal 0.6214, LinearMetric.new(1000.0, 'm').to_mi
    end

    ######## CONVERSION cm
    
    def test_cm_conversion_to_m
		assert_equal 100.0, LinearMetric.new(10000.0, 'cm').to_m
    end

    def test_cm_conversion_to_cm
		assert_equal 10000.0, LinearMetric.new(10000.0, 'cm').to_cm
    end
    
    def test_cm_conversion_to_km
		assert_equal 0.1, LinearMetric.new(10000.0, 'cm').to_km
    end
    
    def test_cm_conversion_to_in
		assert_equal 3937.0, LinearMetric.new(10000.0, 'cm').to_in
    end

    def test_cm_conversion_to_ft
		assert_equal 328.08, LinearMetric.new(10000.0, 'cm').to_ft
    end

    def test_cm_conversion_to_yd
		assert_equal 109.36, LinearMetric.new(10000.0, 'cm').to_yd
    end

    def test_cm_conversion_to_mi
		assert_equal 0.0621, LinearMetric.new(10000.0, 'cm').to_mi
    end

    ######## CONVERSION KM
    
    def test_km_conversion_to_m
		assert_equal 10000.0, LinearMetric.new(10.0, 'km').to_m
    end

    def test_km_conversion_to_cm
		assert_equal 1000000.0, LinearMetric.new(10.0, 'km').to_cm
    end
    
    def test_km_conversion_to_km
		assert_equal 10.0, LinearMetric.new(10.0, 'km').to_km
    end
    
    def test_km_conversion_to_in
		assert_equal 393700.0, LinearMetric.new(10.0, 'km').to_in
    end

    def test_km_conversion_to_ft
		assert_equal 32808.0, LinearMetric.new(10.0, 'km').to_ft
    end

    def test_km_conversion_to_yd
		assert_equal 10936.0, LinearMetric.new(10.0, 'km').to_yd
    end

    def test_km_conversion_to_mi
		assert_equal 6.2137, LinearMetric.new(10.0, 'km').to_mi
    end

    ######## CONVERSION IN
    
    def test_in_conversion_to_m
		assert_equal 0.508, LinearMetric.new(20.0, 'in').to_m
    end

    def test_in_conversion_to_cm
		assert_equal 50.8, LinearMetric.new(20.0, 'in').to_cm
    end
    
    def test_in_conversion_to_km
		assert_equal 0.0005, LinearMetric.new(20.0, 'in').to_km
    end
    
    def test_in_conversion_to_in
		assert_equal 20.0, LinearMetric.new(20.0, 'in').to_in
    end

    def test_in_conversion_to_ft
		assert_equal 1.6666, LinearMetric.new(20.0, 'in').to_ft
    end

    def test_in_conversion_to_yd
		assert_equal 0.5555, LinearMetric.new(20.0, 'in').to_yd
    end

    def test_in_conversion_to_mi
		assert_equal 0.0003, LinearMetric.new(20.0, 'in').to_mi
    end

    ######## CONVERSION ft
    
    def test_ft_conversion_to_m
		assert_equal 30.4804, LinearMetric.new(100.0, 'ft').to_m
    end
    
    def test_ft_conversion_to_cm
		assert_equal 3048.04, LinearMetric.new(100.0, 'ft').to_cm
    end
    
    def test_ft_conversion_to_km
		assert_equal 0.0305, LinearMetric.new(100.0, 'ft').to_km
    end
    
    def test_ft_conversion_to_in
		assert_equal 1200.0133, LinearMetric.new(100.0, 'ft').to_in
    end

    def test_ft_conversion_to_ft
		assert_equal 100.0, LinearMetric.new(100.0, 'ft').to_ft
    end

    def test_ft_conversion_to_yd
		assert_equal 33.3334, LinearMetric.new(100.0, 'ft').to_yd
    end

    def test_ft_conversion_to_mi
		assert_equal 0.0189, LinearMetric.new(100.0, 'ft').to_mi
    end

    
    ######## CONVERSION yd
    
    def test_yd_conversion_to_m
        assert_equal 182.8822, LinearMetric.new(200.0, 'yd').to_m
    end

    def test_yd_conversion_to_cm
        assert_equal 18288.22, LinearMetric.new(200.0, 'yd').to_cm
    end
    
    def test_yd_conversion_to_km
        assert_equal 0.1829, LinearMetric.new(200.0, 'yd').to_km
    end
    
    def test_yd_conversion_to_in
        assert_equal 7200.0722, LinearMetric.new(200.0, 'yd').to_in
    end

    def test_yd_conversion_to_ft
        assert_equal 599.9999, LinearMetric.new(200.0, 'yd').to_ft
    end

    def test_yd_conversion_to_yd
        assert_equal 200.0, LinearMetric.new(200.0, 'yd').to_yd
    end

    def test_yd_conversion_to_mi
        assert_equal 0.1136, LinearMetric.new(200.0, 'yd').to_mi
    end


    # CONVERSION mi    
    
    def test_mi_conversion_to_m
        assert_equal 160934.7088, LinearMetric.new(100.0, 'mi').to_m
    end

    def test_mi_conversion_to_cm
        assert_equal 16093470.88, LinearMetric.new(100.0, 'mi').to_cm
    end
    
    def test_mi_conversion_to_km
        assert_equal 160.9347, LinearMetric.new(100.0, 'mi').to_km
    end
    
    def test_mi_conversion_to_in
        assert_equal 6335999.4855, LinearMetric.new(100.0, 'mi').to_in
    end

    def test_mi_conversion_to_ft
        assert_equal 527994.5926, LinearMetric.new(100.0, 'mi').to_ft
    end

    def test_mi_conversion_to_yd
        assert_equal 175998.1975, LinearMetric.new(100.0, 'mi').to_yd
    end

    def test_mi_conversion_to_mi
        assert_equal 100.0, LinearMetric.new(100.0, 'mi').to_mi
    end

end
