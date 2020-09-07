class PokeEggsController < ApplicationController

  def index
    @poke_eggs = PokeEgg.all
  end

end
