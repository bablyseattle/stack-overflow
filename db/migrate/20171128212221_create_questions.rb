class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :query, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
