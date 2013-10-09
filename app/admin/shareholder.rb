ActiveAdmin.register Shareholder do
  
  controller do
    
    def permitted_params
      params.permit shareholder: [:uid, :name, :shares]
    end
  end 
end
