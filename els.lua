 SMODS.Joker{
    key = "ultimate_joker",
    rarity = 1,
    price = 1,
    blueprint_compat = true,
    eternal_compat = true,
    demicoloncompat = true,
    config = {
        extra = 1e308
    },
    atlas = "esl_joker",
    pos = {x=0,y=0},
    soul_pos = {x=1,y=0},
    loc_vars = function(self, q, card)
        return {
            vars = {
                "{1.7975e308}",
                card.ability.extra
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                hypermult = {
                    1.7975e308,
                    card.ability.extra
                }
            }
        end
    end
}

SMODS.Atlas{
    key = "esl_joker",
    path="esl_joker.png",
    px = 71,
    py = 95
}