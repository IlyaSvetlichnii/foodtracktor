ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
permit_params :title, :description, :category_id, :image, :price, :restaurant_id

#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs do
      f.input :category
      f.input :restaurant
      f.input :title
      f.input :description
      f.input :price
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

end
