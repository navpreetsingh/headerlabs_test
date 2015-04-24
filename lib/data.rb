class Data
	class << self

		def encrypt(content)			
			unless content.nil?
				content = content.gsub(" ","") 	
				content = content.gsub("\t", "")
				length = content.length		
			end			
			return "Could not be encrypted" if content.nil? or length > 54			
			num = Math.sqrt(length).ceil - 1		    		    
			length = length - 1			
		    hash = {}	          
		    (0..num).each{|n| hash["array#{n}"] = ""}      
		    debugger 
		    (0..length).step(num + 1).each do |pos|
		      (0..num).each {|down| hash["array#{down}"] += content[down + pos] unless (down + pos) > length }		      
		    end
		    new_content = ""
		    (0..num).each{|n| new_content += hash["array#{n}"] + " " } 
		    new_content	    
		end

	end
end