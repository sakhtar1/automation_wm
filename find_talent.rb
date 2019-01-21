
require 'page-object'

class FindTalent
	
	  include PageObject
	  	button(:send, :xpath => '//*[@id="wm-main-nav"]/div/div[1]/div/div/div[2]/div[2]/a/div/div/div')
	    text_field(:search, :id => 'input-text')
	    button(:send, :css => 'enter')

	    page_url 'https://dev.workmarket.com/home'

	  def test_method(search)
	  	send
	    self.search = search
	    send
	    puts "Registration complete"
	   
	  end



end