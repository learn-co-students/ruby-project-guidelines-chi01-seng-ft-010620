class CreatePersonalities < ActiveRecord::Migration[5.1]

    def change 
        create_table personalities do |t|
            t.integer :breed_id
            t.integer :temperament_id
        end 
    end 

end 