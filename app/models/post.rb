class Post < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true, length: {minimum: 3, maximum: 25}
    validates :description, presence: true, length: {minimum: 10, maximum: 200}

    validates :user_id, presence: true #THE USER_ID IS REQUIRED FOR MAKE A POST NOW#

end