local prizes = {
    11668,      -- Vibrating Gauntlets of Infuse
    59509,      -- Glowing Black Drum
    24890,      -- Holgresh Elder Beads
    2469,       -- Guise of the Deceiver
    10895,      -- Fungus Covered Great Staff
    59504,      -- Glowing White Drum
    4164,       -- Rubicite Breastplate
    11604,      -- Scimitar of the Mistwalker
    6631,       -- Ton Po's Bo Stick of Understanding
    5667        -- Earthshaker
};

function event_say(e)
    if (e.message:findi(hail)) then
        e.self:Say("Welcome! Welcome to Shandeling's, the gaming hall of chance! The game room is downstairs. If you are lucky enough to get a Gold Ticket, be sure to bring it to me for a spin on the big wheel of prizes! Make sure to tip your waitress well!");
    end
end

-- so someone was trading the Gold Ticket AND one of the prizes to try ???
function CheckTrade(trade, item)
    -- shallow copy
    local trade_copy = {};
    for k, v in pairs(trade) do
        trade_copy[k] = v;
    end

    for i = 1, 4 do
        local key = "item" .. i;
        if (trade_copy[key] ~= nil and trade_copy[key].valid and trade_copy[key]:GetID() == item) then
            return true;
        end
    end
    return false;
end

function event_trade(e)
    local item_lib = require("items");
    if (item_lib.check_turn_in(e.trade, {item1 = 66615})) then -- Gold Ticket
        local valid_prizes = { };
        for k, v in pairs(prizes) do
            if (not e.other:HasItem(v) and not (v == 2469 and e.other:GetBaseRace() == 6) and not CheckTrade(e.trade, v)) then -- dark elf can't get mask
                valid_prizes[#valid_prizes + 1] = v;
            end
        end

        if (#valid_prizes == 0) then
            e.self:Say("I don't have any prizes for you at this time.");
            e.other:SummonItem(66615);
        else
            e.self:Shout(string.format("Ladies and Gentlemen gather around, as our brave %s is turning in their Golden Ticket for a chance at the big time! With a spin of the wheel let us determine the prize. Ladies and gentlemen, the $race wins a prize! Everyone please congratulate %s on this excellent luck!", e.other:GetName(), e.other:GetName()));
            e.other:SummonItem(eq.ChooseRandom(valid_prizes));
        end
    end
    item_lib.return_items(e.self, e.other, e.trade);
end

