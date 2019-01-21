
require 'page-object'

class SignupPage
	
	  include PageObject
	  	button(:send, :css => 'span')
	    text_field(:fname, :id => 'firstname')
	    text_field(:lname, :id => 'lastname')
	    text_field(:email, :id => 'email')
	    text_field(:pd, :id => 'password')
	    button(:send, :xpath => '//*[@id="landing-page-bucket"]/div/div[2]/div[2]/div/div[5]/div/input')
	    button(:send, :css => 'button')

	    page_url 'https://dev.workmarket.com/register/campaign/10081C503B209A0C8E7F05FDCC1AA98D4C904DEEF5F73265CAE38C744E7EAD3E'

	  def signup_method(fname, lname, email, pd)
	  	send
	    self.fname = fname
	    self.lname = lname
	    self.email = email
	    if self.pd = pd
	    	pd.length >= 8
	    	 "Password complete"
	    else
	    	"password test failed"
	    end
	    send 
	    send
	    puts "Registration complete"
	   
	  end



end

	