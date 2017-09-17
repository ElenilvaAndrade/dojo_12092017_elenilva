require_relative 'helper.rb'
require_relative 'spec_helper.rb'

## PageObjets Definitions
World(UI::Pages)

## Helpers Definitions
World(Helper)

## Cucumber Definitions
Before do |feature|
  ## configure the chosen browser
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "http://www.example.com"
  end
end

After do |scenario|
  ## take screenshot
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end
