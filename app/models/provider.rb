class Provider < ApplicationRecord

    
    #escopos
    
    scopes :by_email , -> (email) { where(contact_email: email) }
    scopes :by_name , ->(name)    { where(contact_email: email) }
    

end
