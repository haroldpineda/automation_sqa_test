# frozen_string_literal: true

Before do
  Capybara.register_driver :chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("window-size=2500,2500")
    options.add_argument("-disable-search-geolocation-disclosure")

    Capybara::Selenium::Driver.new(app,
      browser: :chrome,
      options: options
    )
  end

  Capybara.default_driver = :chrome
  Capybara.default_max_wait_time = 10
end
