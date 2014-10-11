class HomeController < ApplicationController
    def index
        if user_signed_in?
            # dashboard
        end
    end
end
