class Provider < ApplicationRecord

    
    #escopos
    
    scope :by_email , -> (email) { where(contact_email: email) }
    scope :by_name , ->(name)    { where(contact_email: email) }
    

end
