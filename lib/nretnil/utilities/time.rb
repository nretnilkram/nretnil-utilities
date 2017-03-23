#!/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

require 'rubygems'

####
# Name: timing
# Description: Takes and optional seconds parameter and will return either the current time or a human readable string of ohw long the time was
# Arguments: [optional] float - number of seconds to be displayed nicely
# Response: Time object or string
####
def timing(seconds = nil)
  return Time.now if seconds.nil?
  return (seconds / 3600.0).round(2).to_s + ' hours' if seconds > 3600
  return (seconds / 60.0).round(2).to_s + ' minutes' if seconds > 60
  seconds.to_f.round(2).to_s + ' seconds'
end
