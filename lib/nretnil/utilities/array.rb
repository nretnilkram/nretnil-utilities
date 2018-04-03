#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

# Array Class Utilities
class Array
  ####
  # Name: partial_include?
  # Description: returns boolean if the the specificed word partially matches a work in the array. Not case sensitive.
  # Arguments: string
  # Response: string
  ####
  def partial_include?(search)
    each do |e|
      return true if e.downcase[search.downcase] || search.downcase[e.downcase]
    end
    false
  end

  ####
  # Name: json_pretty
  # Description: takes an Array object and returns json in a readable format
  # Arguments: data - hash - object to be transformed
  # Response: string
  ####
  def json_pretty
    JSON.pretty_generate(self)
  rescue NoMethodError
    self
  end
end
