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
