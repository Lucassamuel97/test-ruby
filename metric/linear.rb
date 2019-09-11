class LinearMetric
	attr_accessor :value, :unit

	def initialize(value, unit)
		@value = value
		@unit = unit
	end
	
	def to_m
		case @unit
		when "in"
			return ( @value / 39.370 ).round(4)
		when "cm"
			return ( @value / 100.00 ).round(4)
		when "ft"
		  	return ( @value / 3.2808 ).round(4)
		when "yd"
			return ( @value / 1.0936 ).round(4)
		when "mi"
			return ( @value / 0.00062137 ).round(4)
		when "km"
			return ( @value / 0.0010000 ).round(4)
		else
			return @value
		end
	end

	def to_cm
		return @value if @unit == "cm"
		return ( to_m / 0.010000 ).round(4)
	end

	def to_km
		return @value if @unit == "km"
		return ( to_m / 1000.0 ).round(4)
	end

	def to_in 
		return @value if @unit == "in"
		return ( to_m * 39.370 ).round(4)
	end

	def to_ft
		return @value if @unit == "ft"
		return ( to_m * 3.2808 ).round(4)
	end

	def to_yd
		return @value if @unit == "yd"
		return ( to_m * 1.0936 ).round(4)
	end

	def to_mi
		return @value if @unit == "mi"
		return ( to_m * 0.00062137 ).round(4)
	end
end