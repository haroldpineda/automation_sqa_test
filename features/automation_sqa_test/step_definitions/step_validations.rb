When('User select second flight') do
  @select_flight = Pages::Result::FlightResult.new
  @select_flight.select_result_flight
end
