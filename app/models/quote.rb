class Quote < ActiveRecord::Base 
    has_many :author 
    # has_many :review, :through, :author
end
