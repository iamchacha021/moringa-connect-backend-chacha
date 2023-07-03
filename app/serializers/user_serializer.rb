class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cohort, :email, :password_digest, :is_admin, :is_alumni
end
