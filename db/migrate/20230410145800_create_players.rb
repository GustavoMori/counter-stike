# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, index: { unique: true }, null: false, comment: 'Name of the player'
      t.string :nick_name, index: { unique: true }, null: false, comment: 'Nickname of the player'
      t.string :role, null: false, comment: 'Function of the player'
      t.string :country, comment: 'Country where the player is from'
      t.string :twitter_url, comment: 'Twitter url of the player'
      t.string :instagram_url, comment: 'Instagram url of the player'
      t.string :twitch_url, comment: 'Twitch url of the player'
      t.integer :age, comment: 'Age of the player'
      t.references :team, foreign_key: true, comment: 'Team of the player'

      t.timestamps
    end
  end
end
