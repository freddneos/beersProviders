class ProvidersController < ApplicationController
        #Escopes
        has_scope :by_email
        has_scope :by_name
        
        
            def index 
                @providers = apply_scopes(Provider).page(params.fetch(:page , 1))
                                            .per(params.fetch(:per_page,20))
            end
            
            def show
            end
            
            def new
                @provider = Provider.new
            end
        
            def edit
            end
        
            def create
            end
        
            def create
                @provider = Provider.create(permitted_params)
        
                if @provider.persisted?
                    redirect_to(provider_path(@provider))
                else
                    render(actin:new)
                end
            end
        
            def update
                if @provider.update_attributes(permitted_params)
                    redirect_to(provider_path(@provider))
                else
                    render(action: :edit)
                end
            end
            def destroy
                @provider.destroy
                redirect_to(providers_path)
            end
        
            private 
        
            def load_provider
                @provider = Provider.find_by(id: params[:id])
            end
        
            def permitted_params
            #parametros
            params.require(:provider)
                  .permit(:alcohol,:price,:style,:name)
            end
                
            end
        end
        
end
