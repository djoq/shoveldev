class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :agreement

      t.timestamps
    end
  end
end
