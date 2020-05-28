class User < ActiveRecord::Base

    validates :username, presence: true, 
    length: {minimum: 3, maximum:15}, 
    uniqueness: {case_sensitive: false}

    VALID_EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i #validation de l'email via txt@txt.fr
    validates :email, presence: true, 
    uniqueness: {case_sensitive: false},
    format: {with: VALID_EMAIL_REGEX}


end