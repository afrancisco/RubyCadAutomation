require 'capybara'
require 'capybara/cucumber'
require 'site_prism'


    Capybara.register_driver :selenium do |app|
            http_client = Selenium::WebDriver::Remote::Http::Default.new
            http_client.timeout = 200
            Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => http_client)
    end
    Capybara.configure do |config|
        config.default_driver = :selenium_chrome
        
    end
    Capybara.default_max_wait_time = 20
##baixar o chromedriver colocar em c:/windows, caso linux => brew install chromedriver 
