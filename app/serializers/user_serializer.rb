class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cohort, :email, :is_admin, :is_alumni, :password
end
