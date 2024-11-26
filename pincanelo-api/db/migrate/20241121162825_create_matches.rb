class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.datetime :datetime
      t.string :status
      t.timestamps
    end
  end
end
