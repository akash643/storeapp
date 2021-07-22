class User < ApplicationRecord
 
  enum role: [:User,:Admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    user_role = UserRole.find_by(name:"User")
    self.user_role_id ||= user_role.id

  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :user_role


         def admin?
          role.name == "admin"
        end
        
        def user?
          role.name == "user"
        end
end
