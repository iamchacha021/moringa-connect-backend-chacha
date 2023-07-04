class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :cohort, :email, :is_admin, :is_alumni
end
