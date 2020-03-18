# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :phone, null: false, unique: true
      t.references(:user, index: true)

      t.timestamps
    end
  end
end
