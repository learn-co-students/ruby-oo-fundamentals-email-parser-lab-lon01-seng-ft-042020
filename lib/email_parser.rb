# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(email_list)
        @email_list = email_list
    end
    attr_accessor :email_list

    def parse
        parsed_list =[]
        parsed_list = @email_list.split(", ")
        parsed_list.map!{|item| item.split(",")}.flatten!
        parsed_list.map!{|item| item.split(" ")}.flatten!
        
        parsed_list = parsed_list.uniq || parsed_list
    end
end
