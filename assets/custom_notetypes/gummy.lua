function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gummy' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'gummy');
		setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'gummy' then
	playSound('goop', 1);
        setProperty('songMisses', getProperty('songMisses')+1);
	end
end
