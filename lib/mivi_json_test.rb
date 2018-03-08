module MiviJsonTest
	class CustomerCollection
		def self.getDetail(file_name)
			if file_name != nil && file_name != ""
				require 'json'
				if File.exist?("lib/#{file_name}.json")
					json_content = File.read("lib/#{file_name}.json")
					if json_content != nil && json_content != ""
						data_arr = JSON.parse(json_content)
						customer = data_arr["data"]["attributes"]
						products = data_arr["included"]

						if customer != nil
							puts ""
							puts ""
							puts ""
							puts "MiviJsonTest: Result"
							puts "----------------------------------------"
							puts ""
							puts ""
							puts ""
							puts "Phone number: #{customer['contact-number']}"
							puts "Email address: #{customer['email-address']}"
							puts "Name: #{customer['title']}.#{customer['last-name']}, #{customer['first-name']}"
							products.each do |product|
								if product["type"] == "products"
									product_data = product["attributes"]
									puts "Product: #{product_data['name']}"
								end
							end
							puts ""
							puts ""
							puts ""
							puts "----------------------------------------"
							puts ""
							puts ""
							puts ""
							puts ""
						end
					else
						puts "Seems your file is empty..!"
					end
				else
					puts "File doesn't exist in the path lib/..!"
				end
			else
				puts "Please provide file name just as below..!"
				puts "MiviJsonTest::CustomerCollection.getDetail('<FILE_NAME>')"
			end
		end
	end
end
