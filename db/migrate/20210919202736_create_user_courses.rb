class CreateUserCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id 
      #once the association is added in the model this two above will becom forein keys automatically
      t.timestamps
    end
  end
end
