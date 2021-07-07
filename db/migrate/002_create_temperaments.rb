class CreateTemperaments < ActiveRecord::Migration[5.0]

    def change 
        create_table :temperaments do |t|
            t.string :name
        end 
    end 

end 