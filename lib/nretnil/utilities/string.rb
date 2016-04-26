require 'rubygems'

class String

  ####
  # Name: to_b
  # Description: Converts string to boolean 
  # Arguments: string
  # Response: true, false, or nil 
  ####
  def to_b
    return true if ( self.downcase == "true" || self.downcase == "t" )
    return false if ( self.downcase == "false" || self.downcase == "f" )
    return nil
  end

  ####
  # Name: shuffle
  # Description: returns same string with characters in random order
  # Arguments: string
  # Response: string
  ####
  def shuffle
    self.split('').shuffle.join
  end

  ####
  # Name: first
  # Description: returns first charater of string
  # Arguments: string
  # Response: string
  ####
  def first
    self[0,1]
  end

  ####
  # Name: last
  # Description: returns last charater of string
  # Arguments: string
  # Response: string
  ####
  def last
    length = self.length
    self[length-1,length]
  end

  ####
  # Name: middle
  # Description: returns middle charaters of string.  Everything but first and last characters.
  # Arguments: string
  # Response: string
  ####
  def middle
    length = self.length
    length > 2 ? self[1,length-2] : ""
  end

  ####
  # Name: scramble
  # Description: returns string word with first and last characters the same and middle characters shuffled.
  # Arguments: string
  # Response: string
  ####
  def scramble
    self.length > 2 ? self.first + self.middle.shuffle + self.last : self
  end

  ####
  # Name: valid_json?
  # Description: retuns boolean of whether string is valid json or not.
  # Arguments: string
  # Response: boolean
  ####
  def valid_json?
    begin
      JSON.parse(self)
      return true
    rescue JSON::ParserError => e
      return false
    end
  end

end