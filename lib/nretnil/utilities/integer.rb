require 'rubygems'

class Integer

  KB = 1024
  SIZE_MAPPING = {
    'B'  => KB,
    'KB' => KB * KB,
    'MB' => KB * KB * KB,
    'GB' => KB * KB * KB * KB,
    'TB' => KB * KB * KB * KB * KB,
    'PB' => KB * KB * KB * KB * KB * KB,
    'EB' => KB * KB * KB * KB * KB * KB * KB
  }

  ####
  # Name: to_human
  # Description: Converts integer into Human readable string size assumeing one KB is 1024 bytes
  # Arguments: integer
  # Response: string
  ####
  def to_human(digits = 2)
    if self < KB
      return "#{self}B"
    end
    SIZE_MAPPING.each_pair { |e, s| return "#{(self.to_f / (s / KB)).round(digits)}#{e}" if self < s }
  end

end