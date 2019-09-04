class DevelopersController < ApplicationController
    before_action :set_developer, only: [:show, :edit, :update, :destroy ]

    def index
        @developers = Developer.all
    end
    
    def show
        
        @games = @developer.games
    end
    
    def new
        @developer = Developer.new
    end

    def create
        @developer = Developer.create(developer_params)
        redirec_to @developer
    end

    def edit

    end

    def update
        @developer = Developer.find(params[:id])
        @developer.update(developer_params)
        redirect_to @developer
    end

    def destroy
        @developer.destroy
        redirect_to developers_path     
    end

    def about

    end

    private

    def developer_params
        params.require(:developer).permit(:name, :ceo, :location)
    end

    def set_developer
        @developer = Developer.find(params[:id])
    end

end
