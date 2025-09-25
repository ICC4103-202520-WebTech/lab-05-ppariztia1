class Reservation < ApplicationRecord
    belongs_to :guest
    belongs_to :room

    has_many :service_usage, dependent: :destroy
    has_one :invoice, dependent: :destroy

    def reservation_status
        "#{code} - #{status}"
    end
end