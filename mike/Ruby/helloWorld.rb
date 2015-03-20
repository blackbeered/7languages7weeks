#!/usr/bin/env ruby

# interaktive Konsole:
# rbi

# runMe: 
# ruby helloWorld.rb

class MyGreeter
    attr_accessor :name
    
    def initialize(name = "Welt")
        @name = name
    end
  
    def sag_hallo()
        puts "Hallo, #{@name}!"
    end

end

class Test
    def bla()
        puts "hlo"
    end
end

s = MyGreeter.new("Tim und Struppi");
s.sag_hallo();

MyGreeter.new().sag_hallo()