ActiveAdmin.register AdminUser do
  permit_params :email, :name, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  show do
    attributes_table do
      row :name
      row :email
      row :created_at
    end

    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
