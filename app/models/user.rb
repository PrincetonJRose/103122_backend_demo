class User < ApplicationRecord
    has_secure_password


    has_many :my_doctor_appointments, foreign_key: :patient_id , class_name: "Appointment"
    has_many :doctors, through: :my_doctor_appointments
    
    has_many :my_patient_appointments, foreign_key: :doctor_id, class_name: "Appointment"
    has_many :patients, through: :my_patient_appointments
    

end
