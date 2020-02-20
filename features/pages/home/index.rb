
module Pages
  module Home
    class Index < SitePrism::Page
      element :going_tab, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[1]/ul/li[2]'
      element :field_origin, '#pbOrigen_2_1938063391'
      element :field_destination, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[1]/fieldset/div/div[3]/div[2]/label'
      element :search_button, '#btn primary btn-codepromo pull-btn'
      element :date_button, :xpath, '/html/body/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/div/div[1]/section/div[3]/div[3]/div[2]/div/form/div/div[2]/div/div/div[2]/fieldset/div/div/div[1]/label'
      element :passengers_field, '#pbPasajeros_2_1938063391'

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
        date_button.send_keys :tab
      end

      def go_passengers_number(number)
        passengers_field.send_keys number
        passengers_field.send_keys :tab
        byebug
      end
    end
  end
end
