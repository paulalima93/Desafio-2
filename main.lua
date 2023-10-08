--dependencies
local player = require("definitions.player")
local colossus = require("definitions.colossus")




--Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Header

print([[
==================================================================

                  /| ________________
            O|===|* >________________>
                  \|
        ---------------------------------------------------

                    SIMULADOR DE BATALHA

==================================================================

        Você empunha a sua espada e se prepara para lutar.
                        É hora da batalha!
      ]])

--obter definição do jogador
print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))  -- %d recebe variável de numeros inteiros

--obter definição do monstro
local boss = colossus

-- apresentar o monstro


-- começa o loop de batalha
