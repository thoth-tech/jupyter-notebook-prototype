class TestModel < ApplicationRecord
    def self.say_hello
        puts "Hello!!!"
    end

    def self.run_ls
        exec("ls")
    end

    def self.run_docker
        exec("docker run --volumes-from jupyter-notebook-prototype-api --rm bash:latest /api/test.sh")
    end
end
