require "byebug"

class Flight

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        
        if passenger.has_flight?(@flight_number) && !self.full? 
            @passengers << passenger
        end
    end

    def list_passengers
        new_array = []
        @passengers.each do |passenger|
            
            new_array << passenger.name
        end
        new_array
    end

    def [](number)
        return @passengers[number]
    end

    def <<(passenger)
        board_passenger(passenger)
    end


end