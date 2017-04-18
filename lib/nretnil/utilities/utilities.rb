#!/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

require 'rubygems'

####
# Name: fifty_fifty
# Description: returns true or false
# Arguments: none
# Response: boolean
####
def fifty_fifty
  return true if rand.round.zero?
  false
end

####
# Name: coin_flip
# Description: returns heads or tails string.
# Arguments: none
# Response: string
####
def coin_flip
  return 'heads' if rand.round.zero?
  'tails'
end
