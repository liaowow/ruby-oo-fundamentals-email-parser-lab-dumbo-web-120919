# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  attr_accessor :email_addresses

  def parse
    email_arr = @email_addresses.split(" ")

    new_arr = email_arr.map do |element|
      if element.chars.last == ","
        element = element[0...-1]
      end
    end

    new_arr.uniq do |element|
      element
    end
  end

end