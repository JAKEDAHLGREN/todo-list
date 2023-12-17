class Task < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :due_date
    validates_presence_of :priority
end
