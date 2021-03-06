require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize(hash = {})
    hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end
end
