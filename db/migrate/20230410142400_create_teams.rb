# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name, index: { unique: true }, null: false, comment: 'Name of the team'
      t.string :country, comment: 'Country where the team is from'
      t.string :coach, comment: 'Coach of the team'
      t.string :twitter_url, comment: 'Twitter url of the team'
      t.string :instagram_url, comment: 'Instagram url of the team'

      t.timestamps
    end
  end
end
