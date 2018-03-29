class BeersController < ApplicationController
#Escopes
has_scope :by_alcohol , using: [:from . :to], type: :hash
has_scope :by_price , using: [:from . :to], type: :hash
has_scope :by_style
has_scope :by_name



    def index 
        @beers = applt_scopes(Beer).page(params.fetch(:page , 1))
                                    .per(params.fetch(:per_page,20))
    end
    
    def show
    end
    
    def new
        @beer = Beer.new
    end

    def edit
    end

    def create
    end

    def create
        @beer = Beer.create(permitted_params)

        if @beer.persisted?
            redirect_to(beer_path(@beer))
        else
            render(actin:new)
        end
    end

    def update
        if @beer.update_attributes(permitted_params)
            redirect_to(beer_path(@beer))
        else
            render(action: :edit)
        end
    end
    def destroy
        @beer.destroy
        redirect_to(beers_path)
    end

    private 

    def load_beer
        @beer = Beer.find_by(id: params[:id])
    end

    def permitted_params
    #parametros
    params.require(:beer)
          .permit(:alcohol,:price,:style,:name)
    end
        
    end
end
