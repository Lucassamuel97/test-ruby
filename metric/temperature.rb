class TemperatureMetric
	attr_accessor :value, :unit

	def initialize(value, unit)
		@value = value
		@unit = unit
	end

	def to_f
		case @unit
		when "c"
			return ( (@value * 9) / 5 + 32 ).round(4)
		when "k"
			return ( ((@value - 273.15) * 9 / 5) + 32 ).round(4)
		else
			return @value
		end
	end

	def to_c
		case @unit
		when "f"
			return ( (@value - 32) * 5 / 9 ).round(4)
		when "k"
			return ( @value - 273.15 ).round(4)
		else
			return @value
		end
	end

	def to_k
		case @unit
		when "f"
			return ( ((@value - 32) * 5  / 9 ) + 273.15 ).round(4)
		when "c"
			return ( @value + 273.15 ).round(4)
		else
			return @value
		end
	end

end
