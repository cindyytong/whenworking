class Member < ApplicationRecord
    self.abstract_class = true
    with_options presence: true, allow_blank: false do 
        validates :email, :password_digest, :session_token, :first_name, :last_name, presence: { message: 'must not be blank'}
        validates :email, uniqueness: { message: 'already registered' }, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address'}
    end  

    validates :first_name, uniqueness: { scope: :last_name }

    validates :password, length: { minimum: 6, allow_nil: true, message: 'must be greater than 6 characters' }

    attr_reader :password, :member_type
    after_initialize :ensure_session_token 


    def member_type 
        @member_type = self.class.to_s  
    end 

    def self.find_by_credentials(email, password) # returns the member or nil
        member = self.class.find_by(email: email)
        return nil unless member
        member.is_password?(password) ? member : nil
      end
    

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end 

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end 


    def reset_session_token!
        generate_unique_session_token
        save!
        self.session_token
    end 
    
    private 
    def ensure_session_token
        generate_unique_session_token unless self.session_token
    end 

    def new_session_token
        SecureRandom.urlsafe_base64
    end 

    def generate_unique_session_token
        self.session_token = new_session_token
        while self.class.find_by(session_token: self.session_token)
          self.session_token = new_session_token
        end
        self.session_token
    end
end 