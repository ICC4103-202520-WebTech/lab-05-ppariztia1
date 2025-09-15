class Reservation < ApplicationRecord
    def reservation_status
        "#{code} - #{status}"
    end
end