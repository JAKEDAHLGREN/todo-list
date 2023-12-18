class User < ApplicationRecord
    has_secure_password
    
    validates_presence_of :name
    validates_presence_of :email
    validates_format_of :email, with: /@/, message: 'must be a valid email address and include @' 

end
