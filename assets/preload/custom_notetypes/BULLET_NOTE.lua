function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BULLET_NOTE' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BULLET_NOTE'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end

end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BULLET_NOTE' then
		characterPlayAnim('dad', 'dodge', true);
		playSound('Shooting', 1.0);
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'BULLET_NOTE' then
		characterPlayAnim('dad', 'attack', true);
		setProperty('health', getProperty('health') - 0.2)
		playSound('knife', 1.0);
	end
end 