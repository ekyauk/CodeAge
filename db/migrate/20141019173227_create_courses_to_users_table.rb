class CreateCoursesToUsersTable < ActiveRecord::Migration
    def up
        create_table :courses_to_users do |t|
            t.integer :user_id
            t.integer :course_id
        end
        add_index :courses_to_users, [:course_id, :user_id]
    end

    def down
        drop_table :courses_to_users
    end

end
