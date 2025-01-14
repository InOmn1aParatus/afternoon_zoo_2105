class Zoo
    attr_reader :name,
                :street,
                :city,
                :state,
                :zip_code,
                :inventory#,
                # :animal_count

    def initialize(name, street, city, state, zip_code)
        @name = name
        @street = street
        @city = city
        @state = state
        @zip_code = zip_code
        @inventory = []
        # @animal_count = 0
    end

    def address
        "#{@street} #{@city}, #{@state} #{@zip_code}"
    end

    # "Cheaper" than using an array to track them
    def animal_count
        @inventory.length
    end

    def add_animal(animal)
        # @animal_count += 1
        @inventory.push(animal)
    end

    # .to_i extracts integers from string, stops at non-integer
    def animals_older_than(age)
        @inventory.find_all { |animal| animal.age.to_i > age }
    end

    # Same .to_i operation
    def total_weight_of_animals
        total_weight = 0
        @inventory.each { |animal| total_weight += animal.weight.to_i }
        total_weight
    end
    # Could also use total_weight += animal.weight.split(" ").first.to_i

    # Removed 'self.'
    def details
        details = {
            'total_weight' => total_weight_of_animals,
            'street_address' => street
        }
    end

    def animals_sorted_by_weight
        @inventory.sort_by { |animal| -animal.weight.to_i }
    end

    # First letter is at index position '0', == first_letter
    def animal_hash
        animal_hash = Hash.new

        @inventory.each do |animal|
            first_letter = animal.kind[0]
            if animal_hash[first_letter]
                animal_hash[first_letter] << animal
            else
                animal_hash[first_letter] = [animal]
            end
        end
        animal_hash
    end
end