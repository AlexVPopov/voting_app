ActiveAdmin.register Shareholder do
  
  index do
    column "UID", :uid
    column :name
    column :shares, sortable: :shares do |shareholder|
      div class: "shares" do
        number_with_delimiter shareholder.shares
      end
    end
    default_actions
  end


  controller do
    
    def permitted_params
      params.permit shareholder: [:uid, :name, :shares]
    end
  end 
end
