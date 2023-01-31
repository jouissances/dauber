class DaubsController < ApplicationController
    
    def index
        # Not list page, randomised page of daub
        @daubs = Daub.all

        # Generate random number out of total # of daubs
        @counter = @daubs.count
        @random = rand(@counter)
        
        @daub_rand = @daubs[@random]
    end

    def new
        # Create new review
        @daub = Daub.new
        @genres = ['Dystopian', 'Fantasy', 'Historical', 'Horror', 'Literary Fiction', 'Magical Realism', 'Mystery', 'Realism', 'Romance', 'Science Fiction', 'Speculative Fiction', 'Thriller', 'Others']
    end

    def create
        # Take inputs and add to db
        @daub = Daub.new(form_params)
        
        @daub.save

        # Redirect to index
        redirect_to root_path
    end

    def show
        # Find speciic daub
        @daub = Daub.find(params[:id])
    end

    def edit
        @genres = ['Dystopian', 'Fantasy', 'Historical', 'Horror', 'Literary Fiction', 'Magical Realism', 'Mystery', 'Realism', 'Romance', 'Science Fiction', 'Speculative Fiction', 'Thriller', 'Others']

        # Find specific daub
        @daub = Daub.find(params[:id])
    end

    def update
        # Find specific daub
        @daub = Daub.find(params[:id])

        # Update params
        @daub.update(form_params)

        # Redirect to specific daub page
        redirect_to daub_path(@daub)
    end

    def destroy
        # Find specific daub and delete
        @daub = Daub.find(params[:id])
        @daub.destroy

        # Redirect to index
        redirect_to root_path
    end

    def form_params
        params.require(:daub).permit(:category, :title, :text_url, :author, :publication_date, :published_by, :image_url, :body, genre: [])
    end

end
