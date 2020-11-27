class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def fullname
    fullname = "#{first_name.capitalize} #{last_name.capitalize}"
  end
end

# In the controller or somewhere else
# current_user.fullname



