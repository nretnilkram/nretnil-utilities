#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'
require 'json'

# Hash Class Utilities
class Hash
  ####
  # Name: json_pretty
  # Description: takes a hash object and returns json is readable format
  # Arguments: data - hash - object to be transformed
  # Response: string
  ####
  def json_pretty
    JSON.pretty_generate(self)
  end
end
