When('Select place of destination {string}') do |place|
  @home_page.search_destination(place)
end

When('User select travel date {string}') do |date|
  @home_page.go_date_travel(date)
end

When('User select travel passagers number {string}') do |number|
  @home_page.go_passengers_number(number)
end

When('User search flights') do
  @home_page.search_button_flights
end
