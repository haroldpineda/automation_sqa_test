
module Pages
  module Home
    class Index < SitePrism::Page
      element :going_tab, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[1]/ul/li[2]'
      element :field_origin, '#pbOrigen_2_1938063391'
      element :field_destination, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[1]/fieldset/div/div[3]/div[2]/label'
      element :search_button, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[4]'
      element :date_button, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[2]/fieldset/div/div/div[1]/label'
      element :passengers_field, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[1]/label'
      element :number_passengers, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[2]/div[2]/div[2]/div[3]/i'
      element :button_continue_passengers, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[2]/button'

      def go_home_page
        visit 'https://www.avianca.com/'
      end

      def search_destination(place)
        wait_until_going_tab_visible
        going_tab.click
        wait_until_field_destination_visible
        field_destination.send_keys place
      end

      def go_date_travel(date)
        wait_until_date_button_visible
        date_button.send_keys date
      end

      def go_passengers_number(number)
        passengers_field.send_keys
        case number
        when '1'
          number_passengers.click
        when '2'
          number_passengers.click
          number_passengers.click
        when '3'
          number_passengers.click
          number_passengers.click
          number_passengers.click
        end
        button_continue_passengers.click
      end

      def search_button_flights
        search_button.click
      end
    end
  end
end
