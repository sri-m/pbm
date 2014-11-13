ActiveAdmin.register Donor do

permit_params :name, :blood_group, :age, :date_to_donate, :gender, :email, :phone, :address

  index do
    column :name
    column :blood_group
    column :age
    column :date_to_donate
    column :gender
    column :email
    column :phone
    column :address
    actions
  end


    form do |f|
  f.inputs do
    f.input :name
    f.input :blood_group, :as => :select, :collection => Group.pluck(:blood_type)
    f.input :age
    f.input :date_to_donate
    f.input :gender, :as => :radio, :collection => [:Male, :Female]
    f.input :email
    f.input :phone
    f.input :address
    actions
  end
end

end
