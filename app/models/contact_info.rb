class ContactInfo < ApplicationRecord
  belongs_to :person
  belongs_to :contact_info_type
end
