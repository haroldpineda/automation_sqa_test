
module Pages
  module Home
    class Index < SitePrism::Page
      element :search_button, '#btn primary btn-codepromo pull-btn'
      def go_home_page
        visit 'https://www.avianca.com/'
      end
    end
  end
end
