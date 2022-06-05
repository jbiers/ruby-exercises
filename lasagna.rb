class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40
    TIME_PER_LAYER = 2

    def remaining_minuted_in_oven(actual_minutes_in_oven)
        return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    end

    def preparation_time_in_minutes(layers)
        return layers * TIME_PER_LAYER
    end

    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)   
        return (number_of_layers * TIME_PER_LAYER) + actual_minutes_in_oven
    end
end

my_lasagna = Lasagna.new
puts my_lasagna.remaining_minuted_in_oven(12)
puts Lasagna::EXPECTED_MINUTES_IN_OVEN