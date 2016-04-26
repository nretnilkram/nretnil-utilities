require 'rubygems'
require 'json'

class Hash

  ####
  # Name: json_pretty
  # Description: takes a hash object and returns json is readable format
  # Arguments: data - hash - object to be transformed
  # Response: string
  ####
  def json_pretty
    return JSON.pretty_generate(self)
  end

end