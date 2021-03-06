#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

COIN_SIDES = %w[heads tails].freeze

####
# Name: fifty_fifty
# Description: returns true or false
# Arguments: none
# Response: boolean
####
def fifty_fifty
  [true, false].sample
end

####
# Name: one_third
# Description: returns true approximately one third of the time.
# Arguments: none
# Response: boolean
####
def one_third
  [false, true, false].sample
end

####
# Name: coin_flip
# Description: returns heads or tails string.
# Arguments: none
# Response: string
####
def coin_flip
  COIN_SIDES.sample
end
