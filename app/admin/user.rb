ActiveAdmin.register User do
  actions :index, :show, :destroy

  index do
    selectable_column
    column "Picture" do |user|
      image_tag user.avatar
    end
    column :name
    column :email
    column :exp
    actions
  end
  
  filter :email
  filter :name
  filter :exp
  
  show do
    attributes_table do
      row :name
      row :email
      row :exp
    end
  end


end
