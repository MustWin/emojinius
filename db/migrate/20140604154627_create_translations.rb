class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.text :input_text
      t.text :output_text

      t.timestamps
    end
  end
end
