# Write your code here

require 'open-uri'
require 'net/http'
require "json"
require 'pry'

class GetRequester

    def initialize(url)
        @URL = "http://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    end

    def get_response_body
       
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
       
    end

    def parse_json
            # response_body = JSON.parse(self.get_response_body)
            # response_body.collect do |respond|
            JSON.parse(get_response_body)


    end




end

# response = GetRequester.new.get_response_body
# puts response