class Person
    attr_accessor :name , :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def is_major?
        @age >= 18
    end
      
end
