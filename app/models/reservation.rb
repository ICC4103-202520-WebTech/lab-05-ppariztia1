class Reservation < ApplicationRecord
    belongs_to :guest
    belongs_to :room

    has_many :service_usages, dependent: :destroy
    has_one :invoice, dependent: :destroy

    validates :code, presence: true, uniqueness: true
    validates :guest_id, presence: true
    validates :room_id, presence: true
    validates :check_in, presence: true
    validates :check_out, presence: true
    validates :status, presence: true
    validates :adults, presence: true
    validates :children, presence: true



    def reservation_status
        "#{code} - #{status}"
    end
end