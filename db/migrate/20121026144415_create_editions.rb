class CreateEditions < ActiveRecord::Migration
  def change
    suppress_messages do
    create_table :editions do |t|
      t.string :title
      t.string :author

      t.references :witness

      t.timestamps
    end
    say "Created Editions Table"
    suppress_messages {add_index :editions, :title}
    end
  end
end
