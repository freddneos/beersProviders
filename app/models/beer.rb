class Beer < ApplicationRecord

    scope :by_style   , ->(style)   { where(style: style) }
    scope :by_name    , ->(name)    { where(name: name) }
    #scope :by_price   , ->(from,to) {where(price: from..to)}
    #scope :by_alcohol , ->(from,to) {where(alcohol: from..to)}
    validates :name    , presence: true
    validates :style   , presence: true
    validates :alcohol , presence: true
    validates :price   , presence: true
end