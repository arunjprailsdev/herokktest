class CreateTestCases < ActiveRecord::Migration[5.0]
  def change
    create_table :test_cases do |t|
      t.datetime :completed_at

      t.timestamps
    end
  end
end
