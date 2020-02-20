Given('User is in Avianca home page') do
  @home_page = Pages::Home::Index.new
  @home_page.go_home_page
end
