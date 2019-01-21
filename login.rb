require 'page-object'

class LoginPage
	
	  include PageObject
	    text_field(:email, :id => 'login-email')
	    text_field(:password, :id => 'login-password')
	    button(:send, :id => 'login_page_button')

	    page_url 'https://dev.workmarket.com/login'

	  def login_method( email, password)
	    self.email = email
	    self.password = password
	    send
	    puts "User logged in"
	  end

end
