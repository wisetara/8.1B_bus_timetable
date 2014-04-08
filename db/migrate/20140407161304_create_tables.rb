class CreateTables < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name

      t.timestamps
    end

    create_table :lines do |t|
      t.integer :number

      t.timestamps
    end

    create_table :stops do |t|
      t.integer :station_id
      t.integer :line_id

      t.timestamps
    end

    # create_table :stops do |t|
    #   t.belongs_to :lines
    #   t.belongs_to :stations

    #   t.timestamps
    # end
  end
end
