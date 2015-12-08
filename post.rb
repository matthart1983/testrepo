require 'net/http'
uri = URI('http://localhost:3000/datapoints')
for i in 1..10 
	datavalue = 1 + rand(30)
	res = Net::HTTP.post_form(uri, 'utf8' => '✓', 'datapoint[value]' => datavalue, 'commit' => 'Create Datapoint' )
	puts res.body
end