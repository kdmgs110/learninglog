class Understand < ActiveRecord::Base
    belongs_to :forms, :users
end
