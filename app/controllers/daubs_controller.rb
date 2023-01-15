class DaubsController < ApplicationController
    
    def index
        # Not list page, randomised page of daub
        @daubs = [""]

        @counter = @daubs.count
        @random = rand(@counter)
        
        @daub = @daubs[@random]
    end

    def new
        
    end

end
