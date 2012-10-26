class CreateWitnesses < ActiveRecord::Migration
  def change
    suppress_messages do
      create_table :witnesses do |t|
        t.string :title
        t.string :author
        t.string :publisher
        t.string :pub_place
        t.integer :year
        t.string :code
        t.text :note

        t.timestamps
      end
    end

    say "Created Witnesses table"
    suppress_messages {add_index :witnesses, :year}
    suppress_messages {add_index :witnesses, :code}
    say "Created the indexes for witnesses", true
  end

end
