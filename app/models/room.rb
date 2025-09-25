class Room < ApplicationRecord
    has_many :reservations, dependent: :destroy

    validates :number, presence: true, uniqueness: true
    validates :room_type, presence: true
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
    validates :status, presence: true

    def type_and_status
        "#{number} - #{room_type} - #{status}"
    end
end
