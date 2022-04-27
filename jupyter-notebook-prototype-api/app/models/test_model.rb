class TestModel < ApplicationRecord
    def self.say_hello
        puts "Hello!!!"
    end

    def self.run_ls
        exec("ls")
    end
end
