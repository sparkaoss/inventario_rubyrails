ActiveAdmin.register Materiale do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nombre, :codigo, :precio_unitario, :cantidad
  #
  # or
  #
  # permit_params do
  #   permitted = [:nombre, :codigo, :precio_unitario, :cantidad]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
