class Zoo
    attr_reader :name,
                :street,
                :city,
                :state,
                :zip_code

    def initialize(name, street, city, state, zip_code)
        @name = name
        @street = street
        @city = city
        @state = state
        @zip_code = zip_code
    end

    def address
        "#{@street} #{@city}, #{@state} #{@zip_code}"
    end
end