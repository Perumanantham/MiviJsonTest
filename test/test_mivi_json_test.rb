gem 'test-unit'
require 'test/unit'
require 'test/unit/ui/console/testrunner'

class TestMiviJsonTest < Test::Unit::TestCase  
   	def test_1()
   		# File found
		assert_equal( true, File.exist?("lib/collection.json"))
		# File not found
		assert_equal( false, File.exist?("lib/xxxxxx.json"))

		if File.exist?("lib/collection.json")
			require 'json'
			json_content = File.read("lib/collection.json")
			# File is not empty
			assert_not_nil(json_content)
		end
	end
end