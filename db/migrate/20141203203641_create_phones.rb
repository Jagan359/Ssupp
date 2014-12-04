class CreatePhones < ActiveRecord::Migration
 def self.up
    create_table :phones do |t|
        t.column :filename, :string
        t.column :content_type, :string
        t.column :data, :binary
    end
  end

  def self.down
    drop_table :phones
  end
end
