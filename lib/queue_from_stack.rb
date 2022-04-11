require_relative './stack'
require 'pry'
# your code here
class MyQueue
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        if @s1.empty?
            @s1.push(value)
        else 
            while !@s1.empty? do
                @s2.push(@s1.pop)
            end
            @s2.push(value)
            while !@s2.empty? do
                @s1.push(@s2.pop)
            end
        end
    end

    def remove
        @s1.pop
    end

    def peek
        @s1.peek
    end
end