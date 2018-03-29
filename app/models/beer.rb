class Beer < ApplicationRecord

    
    #t.string :name
    #t.string :style
    #t.float :alcohol
    #t.float :price

    scope :by_style , ->(style) {where(style: style)}
    scope :by_name ,  ->(name) {where(style: name)}
    scope :by_alcohol , ->(from,to) {where(alcohol: from..to)})
    scope :by_price , ->(from,to) {where(price: from..to)})
    validates :name , presence: true
    validates :style , presence: true
    validates :alcohol , presence: true
    validates :price , presence: true
    

end