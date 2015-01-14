class User < ActiveRecord::Base
  has_secure_password
  before_save :create_remember_token
  VALID_EMAIL_REGEX = /([\w|_|\.|\+]+)@([-|\w]+)\.([A-Za-z]{2,4})/
  validates :email,uniqueness:true,format:{with:VALID_EMAIL_REGEX}

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
