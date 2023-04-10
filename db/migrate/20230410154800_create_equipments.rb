# frozen_string_literal: true

class CreateEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :equipments do |t|
      t.string :name, index: { unique: true }, null: false, comment: 'Name of the equipment'
      t.string :type, null: false, comment: 'Type of the equipment'

      t.timestamps
    end
  end
end
