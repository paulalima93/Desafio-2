--dependencies
local utils = require("utils")
local player = require("definitions.player")
local colossus = require("definitions.colossus")


utils.enableUTF8()

-- Header
utils.printHeader()


--obter definição do jogador
--print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))  -- %d recebe variável de numeros inteiros

--obter definição do monstro
local boss = colossus

-- apresentar o monstro
utils.printCreature(boss)

-- começa o loop de batalha
