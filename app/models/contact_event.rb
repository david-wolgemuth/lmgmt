class ContactEvent < ApplicationRecord
  belongs_to :person
  belongs_to :contact_event_type
end
