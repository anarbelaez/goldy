class Admin < User
  validates :first_name, :email, presence: true
end
