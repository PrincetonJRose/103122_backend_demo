class Appointment < ApplicationRecord

    belongs_to :patient, class_name: 'User'
    belongs_to :doctor, class_name: 'User'

    validates :patient_id, :doctor_id, :date, presence: true

    # def patient
    #     User.find_by( id: self.patient_id )
    # end

    # def doctor
    #     User.find_by( id: self.doctor_id )
    # end

end
