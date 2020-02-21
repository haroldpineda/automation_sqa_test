# frozen_string_literal: true

module Pages
  module Result
      class FlightResult < SitePrism::Page
        element :button_search_second_fly, :xpath, '/html/body/section/section/div/section/section/div[2]/div/div/section/section/div[1]/section/section/span[2]/div/div[2]/section/div/div[1]/div/div[3]/div/div[2]/div/div[2]/label[1]/div/div[1]/div/span[1]/span'
        element :button_light_trip, :xpath, '/html/body/section/section/div/section/section/div[2]/div/div/section/section/div[1]/section/section/span[2]/div/div[2]/section/div/div[1]/div/div[3]/div/div[2]/div/div[4]/div[1]/div/div[1]/div/div[1]/div/div[2]/div[2]/span'

        def select_result_flight
          sleep 10
          button_search_second_fly.click
          sleep 5
          button_light_trip.click
          sleep 5
      end
    end
  end
end
