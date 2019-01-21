
require 'selenium-webdriver'
require 'page-object/page_factory'
require_relative 'signup.rb'
require_relative 'login.rb'
require_relative 'find_talent.rb'

include PageObject::PageFactory

#Browser setup
@browser = Selenium::WebDriver.for :chrome
#----------

#Execution of test
# visit(SignupPage)
# on(SignupPage).signup_method('sampfname', 'samplname','test@test.com', 'test12345')

# visit(SignupPage)
# on(SignupPage).signup_method('sampfname', 'samplname','tes@test.com', 'f')

visit(LoginPage)
on(LoginPage).login_method('qa+candidatetest@workmarket.com', 'candidate123')

visit(FindTalent)
on(FindTalent).test_method('test')


