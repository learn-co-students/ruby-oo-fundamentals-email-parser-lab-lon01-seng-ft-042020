# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end
    def parse
        a = emails.split.map do |email|
           email.split(",")
           #binding.pry
        end
        #binding.pry
        a.flatten.uniq
    end
end