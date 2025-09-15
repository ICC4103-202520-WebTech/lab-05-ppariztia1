class Room < ApplicationRecord
    def type_and_status
        "#{number} - #{room_type} - #{status}"
    end
end
