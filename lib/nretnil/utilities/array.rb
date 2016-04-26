require 'rubygems'

class Array

  ####
  # Name: partial_include?
  # Description: returns boolean if the the specificed word partially matches a work in the array. Not case sensitive.
  # Arguments: string
  # Response: string
  ####
  def partial_include? search
    self.each do |e|
      return true if ( e.downcase[search.downcase] || search.downcase[e.downcase] )
    end
    return false
  end
end