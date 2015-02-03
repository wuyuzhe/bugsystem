class Codebug < ActiveRecord::Base
  belongs_to :bugtype
  belongs_to :user
end
