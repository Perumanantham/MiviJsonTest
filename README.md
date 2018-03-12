# MiviJsonTest
MiviJsonTest is for list out the data collection

Steps to run this gem.
1. Download this repository
2. Enter into your downloaded gem folder "mivi_json_test"
3. In order to intall the gem locally in your machine, run the below two commands (A,B)
   A) gem build mivi_json_test.gemspec
   B) gem install ./mivi_json_test-0.0.1.gem
4. Enter into "irb" console
5. Include the gem using this: require 'mivi_json_test'
6. Finallay run this command to get the list: MiviJsonTest::CustomerCollection.getDetail('collection')


Steps to test this gem:
1. Enter into your downloaded gem folder "mivi_json_test"
2. Enter into "irb" console
3. Include the test file using this: require './test/test_mivi_json_test'
4. my_tests = Test::Unit::TestSuite.new("My Gem Tests") -> 'My Gem Tests' is just a name
5. my_tests << TestMiviJsonTest.new('test_1')
6. Finallay run this command to get test result: Test::Unit::UI::Console::TestRunner.run(my_tests)
