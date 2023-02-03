class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string    :email
      t.string    :first_name
      t.string    :last_name
      t.string    :password_digest
      t.integer   :zip_code
      t.string    :medical_degree

      t.timestamps
    end
  end
end
