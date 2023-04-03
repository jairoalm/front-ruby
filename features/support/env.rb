require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'pry'
require 'faker'
require "cpf_faker"
require "roo"

# Capybara.defaut_driver = :selenium_chrome ou Capybara.current_driver = :selenium_chrome
# Congiração ambiente prod e hml
ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

Capybara.app_host = ENVIRONMENT_CONFIG['url']

Capybara.default_driver = :selenium_chrome