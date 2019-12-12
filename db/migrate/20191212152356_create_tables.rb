class CreateTables < ActiveRecord::Migration[6.0]
    def change
        create_table :answers, force: true do |t|
            t.string :text
            t.references :question
        end

        create_table :questions, force: true do |t|
            t.string :title
        end
    end
end
