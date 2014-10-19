class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
        t.string :name
        t.string :url
        t.string :description
        t.integer :ratings
        t.integer :difficulty
        t.time :duration
        t.integer :review_id
        t.timestamps
    end
  end
end