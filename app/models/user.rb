class User < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates_uniqueness_of :email, scope: :email, presence:true
    validates :email, email_format: { message: "doesn't look like an email address" }
end
