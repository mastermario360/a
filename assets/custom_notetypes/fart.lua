function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'fart' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'whoopee_notes');
		setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'fart' then
	playSound('fart', 1);	
        setProperty('songMisses', getProperty('songMisses')+1);
	end
end