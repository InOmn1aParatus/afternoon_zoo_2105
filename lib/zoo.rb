class Zoo
    attr_reader :name,
                :street,
                :city,
                :state,
                :zip_code,
                :inventory,
                :animal_count

    def initialize(name, street, city, state, zip_code)
        @name = name
        @street = street
        @city = city
        @state = state
        @zip_code = zip_code
        @inventory = []
        @animal_count = 0
    end

    def address
        "#{@street} #{@city}, #{@state} #{@zip_code}"
    end

    def add_animal(animal)
        @animal_count += 1
        @inventory << animal
    end

    def animals_older_than(age)
        @inventory.find_all { |animal| animal.age.to_i > age }
    end

    def total_weight_of_animals
        total_weight = 0
        @inventory.each { |animal| total_weight += animal.weight.to_i }
        total_weight
    end

    def details
        details = {
            'total_weight' => self.total_weight_of_animals,
            'street_address' => self.street
        }
    end
end

require 'pry'; binding.pry