require "pry"
class EmailAddressParser
   
    attr_accessor :email
   
    def initialize(email)
    @email = email
    end

    #Instance method returns unquie email addresses
    #Should split a string of email addressed separated by commas & whitespace
    def parse
    @email.split(/, | /).uniq
    end
end