class Address < ApplicationRecord
	belongs_to :item, optional: true
end