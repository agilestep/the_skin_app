ActiveAdmin.register Account do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment

  permit_params :first_name, :last_name, :nick_name, :email, :address, :account_type, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at


  
end
