class Group < ApplicationRecord
    validates :group, :color, presence: :true

    def is_used?
        events = Event.all
        a = events.map do |event|
            event.group
        end
        if a.include? self.group
            return true
        else
            false
        end
    end


end