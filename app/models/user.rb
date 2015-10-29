class User < ActiveRecord::Base
# #2
   before_save { self.email = email.downcase }
   before_save :format_name
 # #3
   EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 # #4
   validates :name, length: { minimum: 1, maximum: 100 }, presence: true
 # #5
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
 # #6
   validates :email,
             presence: true,
             uniqueness: { case_sensitive: false },
             length: { minimum: 3, maximum: 100 },
             format: { with: EMAIL_REGEX }

 # #7
   has_secure_password

def format_name
    if name
        name_array = []
        name.splt.each do |name_part|
        name_array << name_part.captialize
    end
    
       self.name = name_array.join(" ")
    end
end
end