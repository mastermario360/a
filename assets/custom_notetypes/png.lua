local baittbl = {
  {
    name="png",
    pos={981,181,741}
  },
  {
    name="png1",
    pos={662,405,422}
  },
  {
    name="png1",
    pos={985,500,745}
  },
  {
    name="png2",
    pos={680,8,440}
  },
  {
    name="bait4",
    pos={981,181,741}
  },
  {
    name="bait5",
    pos={959,10,719}
  },
  {
    name="bait6",
    pos={630,235,390}
  },
  {
    name="bait7",
    pos={722,500,482}
  },
  {
    name="bait8",
    pos={975,300,682}
  },
}
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'sage' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'sagenotes');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	for i,v in pairs(baittbl) do -- I is the current position, V is the current object
	if not middlescroll then
  makeLuaSprite(v.name, "bait/pic".. i, v.pos[1], v.pos[2])
  elseif middlescroll then
  makeLuaSprite(v.name, "bait/pic".. i, v.pos[3], v.pos[2])
		end
  setObjectCamera(v.name, 'hud')
  setScrollFactor(v.name, 0, 0)
	end
end


function min(a,b) if a > b then return b else return a end end
local notes = {
  ["sage"] = {
    misses = 0,
    max = 7,
    func = function(self)
      addLuaSprite('bait' .. min(self.misses,self.max), true);
    end,
  },
}
function goodNoteHit(id, direction, noteType, isSus)
  if (notes[noteType]) then

    notes[noteType].misses = notes[noteType].misses + 1
    if notes[noteType].func then
      notes[noteType].func(notes[noteType])
    end
  end
end
