class Developer < ApplicationRecord
    has_many :games

    def all_games
        self.games
    end

end
