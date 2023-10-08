local utils = {}

---
--- Essa função habilita o modo UTF-8 no terminal
---
function utils.enableUTF8()
    os.execute("chcp 65001")
end


---
--- Essa função printa o header com a apresentação do simulador no terminal
---
function  utils.printHeader()
    print([[
==================================================================
                      /| ________________
                O|===|* >________________>
                      \|
    ---------------------------------------------------------

                ⚔ SIMULADOR DE BATALHA ⚔

==================================================================

        Você empunha a sua espada e se prepara para lutar.
                        É hora da batalha!
      ]])
end

---
---Calcula uma barra de progresso ASCII baseada em um atributo
---@param attribute number Número de 0 a 10
---@return string
---
function utils.getProgressBar(attribute)
    local full = "▰ "
    local empty = "▱ "
    local result = ""

    for i = 1, 10, 1 do
        -- result = result .. (i <= attribute and full or empty)
        if i <= attribute then
            --quadrado cheio
            result = result .. full
        else
            --quadrado vazio
            result = result .. empty
        end
    end
    return result
end


---
---Faz o print das informações de uma criatura
---@param creature table
---
function utils.printCreature(creature)
    --calcula barra de vida 
    --se a vida for 50 e o maximo tbm 50, 50/50 = 1 > 1*10 = 10 > nossa barra vai de 0 a 10, então a vida está full.
    --se a vida for 40 e o maximo tbm 50, 40/50 = 0,8 > 0,8*10 = 8 > nossa barra vai de 0 a 10, então a vida está em 80%.
    local healthRate = math.floor((creature.health/ creature.maxHealth) * 10)

    -- cartao
    print("| " .. creature.name) -- concatenação, o + não concatena strings
    print("| " )
    print("| " .. creature.description)
    print("| ")
    print("| Atributos")
    print("|    Vida:            " .. utils.getProgressBar(healthRate))
    print("|    Ataque:          " .. utils.getProgressBar(creature.attack))
    print("|    Defesa:          " .. utils.getProgressBar(creature.defense))
    print("|    Velocidade:      " .. utils.getProgressBar(creature.speed))
end

return utils