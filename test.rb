
require 'selenium-webdriver'
require 'page-object/page_factory'
require_relative 'signup.rb'

include PageObject::PageFactory

#Browser setup
@browser = Selenium::WebDriver.for :safari
#----------

#Execution of test
visit(SignupPage)
on(SignupPage).signup_method('sampfname', 'samplname','test@test.com', 'test12345')

