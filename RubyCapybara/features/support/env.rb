require 'capybara'
require 'capybara/cucumber'

    Capybara.configure do |config|
        config.default_driver = :selenium_chrome
    end

##baixar o chromedriver colocar em c:/windows, caso linux => brew install chromedriver 
