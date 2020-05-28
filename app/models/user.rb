class User < ActiveRecord::Base
    has_many :posts

    before_save { self.email.downcase!} #BEFORE SAVE https://api.rubyonrails.org/classes/ActiveRecord/Callbacks.html 
                                        #"!" POUR QUE LE MAIL DEVIENNE EN MINUSCULE À 100%#
    validates :username, presence: true, 
                    length: {minimum: 3, maximum:15}, 
                    uniqueness: {case_sensitive: false}

    VALID_EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i #validation de l'email via txt@txt.fr

    validates :email, presence: true, 
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}

end