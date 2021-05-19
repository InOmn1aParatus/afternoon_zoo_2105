require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
    it 'exists' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo).to be_a(Zoo)
    end

    it 'has a name' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.name).to eq("Bronx Zoo")
    end

    it 'has a street' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.street).to eq("2300 Southern Blvd")
    end

    it 'has a city' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.city).to eq("Bronx")
    end

    it 'has a state' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.state).to eq("NY")
    end

    it 'has a zip code' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.zip_code).to eq("10460")
    end

    it 'has an address' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.address).to eq("2300 Southern Blvd Bronx, NY 10460")
    end

    it 'holds animals in inventory' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
        animal_1 = Animal.new("Sea Otter", 10, 25)
        animal_2 = Animal.new("Red Panda", 5, 70)
        zoo.add_animal(animal_1)
        zoo.add_animal(animal_2)

        expect(zoo.inventory).to eq([animal_1, animal_2])
        expect(zoo.animal_count).to eq(2)
    end

    it 'lists animals older than given age' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
        animal_1 = Animal.new("Sea Otter", 10, 25)
        animal_2 = Animal.new("Red Panda", 5, 70)
        animal_3 = Animal.new("Capybara", 100, 150)
        animal_4 = Animal.new("Dolphin", 150, 200)
        zoo.add_animal(animal_1)
        zoo.add_animal(animal_2)
        zoo.add_animal(animal_3)
        zoo.add_animal(animal_4)

        expect(zoo.animals_older_than(250)).to eq([])
        expect(zoo.animals_older_than(100)).to eq([])
        expect(zoo.animals_older_than(10)).to eq([])
    end

end