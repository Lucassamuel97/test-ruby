class Temperature
	attr_accessor :value, :unit

	def initialize(value, unit)
		@value = value
		@unit = unit
	end

	def to_fahrenheit
		case @unit
		when "C"
			return ( (@value * 9) / 5 + 32 ).round(4)
		when "K"
			return ( ((@value - 273.15) * 9 / 5) + 32 ).round(4)
		else
			return @value
		end
	end

	def to_celsius
		case @unit
		when "F"
			return ( (@value - 32) * 5 / 9 ).round(4)
		when "K"
			return ( @value - 273.15 ).round(4)
		else
			return @value
		end
	end

	def to_kelvin
		case @unit
		when "F"
			return ( ((@value - 32) * 5  / 9 ) + 273.15 ).round(4)
		when "C"
			return ( @value + 273.15 ).round(4)
		else
			return @value
		end
	end

end
