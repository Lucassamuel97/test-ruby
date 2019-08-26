class Temperature
	attr_accessor :value, :unit

	def initialize(value, unit)
		@value = value
		@unit = unit
	end

	def to_fahrenheit
		case @unit
		when "C"
			puts (@value * 9) / 5 + 32
		when "K"
			puts (((@value - 273.15) * 9) / 5) + 32
		else
			puts @value
		end
	end

	def to_celsius
		case @unit
		when "F"
			puts ((@value - 32) * 5) / 9
		when "K"
			puts @value - 273.15
		else
			puts @value
		end
	end

	def to_kelvin
		case @unit
		when "F"
			puts (((@value - 32) * 5 ) / 9 ) + 273.15
		when "C"
			puts @value + 273.15
		else
			puts @value
		end
	end

end

temp = Temperature.new(10, 'F')
puts "Unidade: #{temp.unit} Valor: #{temp.value}"

temp.to_fahrenheit
temp.to_kelvin
temp.to_celsius

temp.unit = 'C'
temp.value = 5

temp.to_fahrenheit
temp.to_kelvin
temp.to_celsius
