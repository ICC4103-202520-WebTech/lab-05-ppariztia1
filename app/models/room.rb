class Room < ApplicationRecord
    has_many :reservations, dependent: :destroy
    def type_and_status
        "#{number} - #{room_type} - #{status}"
    end
end
