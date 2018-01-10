#!/bin/env ruby
# frozen_string_literal: true

require 'rubygems'

HOUR_LABEL = 'hours'.freeze
MIN_LABEL = 'minutes'.freeze
SEC_LABEL = 'seconds'.freeze

####
# Name: timing
# Description: Takes and optional seconds parameter and will return either the current time or a human readable string of ohw long the time was
# Arguments: [optional] float - number of seconds to be displayed nicely
# Response: Time object or string
####
def timing(seconds = nil)
  return Time.now if seconds.nil?
  return Time.at(seconds.to_f.round(0)).utc.strftime("%H #{HOUR_LABEL} %M #{MIN_LABEL} %S #{SEC_LABEL}") if seconds > 3600
  return Time.at(seconds.to_f.round(0)).utc.strftime("%M #{MIN_LABEL} %S #{SEC_LABEL}") if seconds > 60
  Time.at(seconds.to_f.round(0)).utc.strftime("%S #{SEC_LABEL}")
end
