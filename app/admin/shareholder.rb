ActiveAdmin.register Shareholder do
  
  index do
    column :uid
    column :name
    column :shares
    default_actions
  end


  controller do
    
    def permitted_params
      params.permit shareholder: [:uid, :name, :shares]
    end
  end 
end
