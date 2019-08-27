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

temp = Temperature.new(10.0, 'F')
puts "Unidade: #{temp.unit} Valor: #{temp.value}"

puts temp.to_fahrenheit
puts temp.to_kelvin
puts temp.to_celsius

# puts temp.unit = 'C'
# puts temp.value = 5
 
# puts temp.to_fahrenheit
# puts temp.to_kelvin
# puts temp.to_celsius
