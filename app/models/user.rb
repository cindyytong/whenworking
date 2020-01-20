class User < Member 
    validates :over_age_13, presence: { message: 'must not be blank' }
end 