ActiveAdmin.register AvailableStock do
permit_params :blood_type, :units, :price

  index do
    column :blood_type
    column :units
    column :price
    actions
  end

  form do |f|
  f.inputs do
    f.input :blood_type, :as => :select, :collection => Group.pluck(:blood_type)
    f.input :units, :input_html => { :size => 25 }
    f.input :price, :input_html => { :size => 25 }
    actions
  end
end

end
