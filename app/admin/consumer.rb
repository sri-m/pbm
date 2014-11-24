ActiveAdmin.register Consumer do

permit_params :name, :require_blood_group, :units_required, :email, :phone, :picked_date, :address

  index do
    column :name
    column :require_blood_group
    column :units_required
    column :email
    column :phone
    column :pickup_date
    column :address
    actions
  end


  form do |f|
  f.inputs do
    f.input :name
    f.input :require_blood_group, :as => :select, :collection => Group.pluck(:blood_type)
    f.input :units_required
    f.input :email
    f.input :phone
    f.input :pickup_date
    f.input :address
    actions
  end
end

end
