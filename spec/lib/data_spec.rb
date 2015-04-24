require 'rails_helper'
require 'data.rb'

describe Data do
	
	describe "encryption" do
		content1 = "have a nice day"
    content2 = "feed the dog"
    content3 = "abcde" * 11
		it "should fail and return false on empty content or key" do			
      new_content = Data.encrypt(nil)
      new_content == "Could not be encrypted"
      new_content = Data.encrypt(content3)
      new_content == "Could not be encrypted"   
      new_content = Data.encrypt(nil)
      new_content == "Could not be encrypted"
    end   

    it "should encrypt content when content and key are acceptable for encryption" do
    	new_content = Data.encrypt(content1)
    	new_content == "hae and via ecy"
    	new_content = Data.encrypt(content2)
    	new_content == "fto ehg ee  dd"
    end
    
	end

end