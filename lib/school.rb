# code here!
require 'pry'


class School
    attr_accessor :name, :roster


    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end
    
    
    def grade(grade)
        # binding.pry
        roster[grade]
        
    end


    def sort
        sorted_hash = {}
        roster.each do |grade, name|
            binding.pry
            sorted_hash[grade] = name.sort
        end 
        sorted_hash
    end


end