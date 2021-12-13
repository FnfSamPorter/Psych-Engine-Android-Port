function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Instakill Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'EX Note');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
			setProperty('health', -2);
			cameraShake('camGame', 0.01, 0.2)
	end
end