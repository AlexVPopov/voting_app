ActiveAdmin.register User do
  index do
    column :username
    column :email
    default_actions
  end

  filter :username
  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit admin_user: [:username, :email, :password, :password_confirmation]
    end
  end
end
