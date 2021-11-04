class ApplicationController < ActionController::Base
    def hello
        render html: "This is the League App"
    end
end
