class CreateOpenings < ActiveRecord::Migration
  def change
    suppress_messages do
      create_table :openings do |t|
        t.text :running_title

        t.text :verso
        t.text :recto

        t.integer :verso_page_number
        t.integer :recto_page_number

        t.text :verso_notes
        t.text :recto_notes

        t.references :witness

        t.timestamps
      end
    end

    say "Created Openings table"
    suppress_messages{add_index :openings, :verso_page_number}
    suppress_messages{add_index :openings, :recto_page_number}
    suppress_messages{add_index :openings, :running_title}
    say "And an index for the page numbers", true
  end
end
