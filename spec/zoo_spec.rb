require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
    it 'exists' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo).to be_a(Zoo)
    end
end