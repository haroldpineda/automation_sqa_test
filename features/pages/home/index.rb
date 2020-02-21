
module Pages
  module Home
    class Index < SitePrism::Page
      element :going_tab, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[1]/ul/li[2]'
      element :passengers_field, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[1]/label'
      element :number_passengers, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[2]/div[2]/div[2]/div[3]/i'
      element :button_continue_passengers, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[3]/fieldset/div/div[1]/div[2]/button'
      element :link_alert_message, :id, 'alert-title-global-warning-message'

      def go_home_page
        visit 'https://www.avianca.com/'
      end

      def search_destination(place, airport)
        wait_until_going_tab_visible
        going_tab.click
        options_country = page.all('a')
        destination = options_country[16]['href']
        @id = destination.gsub!("https://www.avianca.com/co/es/#ida_1", '')
        find(id: "pbDestino_2#{@id}").set place
        data_airport = page.all('div', text: airport)
        data_airport.last.click
      end

      def go_date_travel(date)
        sleep 3
        object_date = find(id: "pbFechaIda_2#{@id}")
        object_date.click
        date_number = page.all('td', text: date)
        date_number[1].click
      end

      def go_passengers_number(number)
        passengers_field.send_keys
        case number
        when '2'
          number_passengers.click
        when '3'
          number_passengers.click
          number_passengers.click
        when '4'
          number_passengers.click
          number_passengers.click
          number_passengers.click
        end
        button_continue_passengers.click
      end

      def search_button_flights
        button_search = page.all('div', text: 'Buscar vuelo')
        button_search.last.click

        #esto es en caso de error
        #find(id: 'alert-title-global-warning-message', wait: 30)
        #@file.write page.text
      end
    end
  end
end
