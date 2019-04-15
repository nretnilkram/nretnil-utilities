#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

# String Class Utilities
class String
  ####
  # Name: to_b
  # Description: Converts string to boolean
  # Arguments: string
  # Response: true, false, or nil
  ####
  def to_b
    return true if casecmp('true').zero? || casecmp('t').zero?
    return false if casecmp('false').zero? || casecmp('f').zero?

    nil
  end

  ####
  # Name: shuffle
  # Description: returns same string with characters in random order
  # Arguments: string
  # Response: string
  ####
  def shuffle
    split('').shuffle.join
  end

  ####
  # Name: first
  # Description: returns first charater of string
  # Arguments: string
  # Response: string
  ####
  def first
    self[0, 1]
  end

  ####
  # Name: last
  # Description: returns last charater of string
  # Arguments: string
  # Response: string
  ####
  def last
    length = self.length
    self[length - 1, length]
  end

  ####
  # Name: middle
  # Description: returns middle charaters of string.  Everything but first and last characters.
  # Arguments: string
  # Response: string
  ####
  def middle
    length = self.length
    length > 2 ? self[1, length - 2] : ''
  end

  ####
  # Name: scramble
  # Description: returns string word with first and last characters the same and middle characters shuffled.
  # Arguments: string
  # Response: string
  ####
  def scramble
    length > 2 ? first + middle.shuffle + last : self
  end

  ####
  # Name: valid_json?
  # Description: retuns boolean of whether string is valid json or not.
  # Arguments: string
  # Response: boolean
  ####
  def valid_json?
    JSON.parse(self)
    true
  rescue JSON::ParserError
    false
  end

  ####
  # Name: uuid?
  # Description: retuns boolean of whether string is a valid uuid.
  # Arguments: string
  # Response: boolean
  ####
  def uuid?
    !match(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/).nil?
  end

  ####
  # Name: sym?
  # Description: retuns boolean of whether string does not contains only letters and numbers.
  # Arguments: string
  # Response: boolean
  ####
  def sym?
    !match(/[^a-zA-Z0-9]/).nil?
  end

  ####
  # Name: proper
  # Description: Converts string by capitalizing the first letter of each word.
  # Arguments: string
  # Response: string
  ####
  def proper
    split.map(&:capitalize).join(' ')
  end
end
