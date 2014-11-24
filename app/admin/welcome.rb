ActiveAdmin.register Welcome do
menu false
menu :label => "Users"
permit_params :name, :email, :phone, :dob, :gender

  index do
    column :name
    column :email
    column :phone
    column :dob
    column :gender
    actions
  end
end
