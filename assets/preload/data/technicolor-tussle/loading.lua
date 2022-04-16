local bg = 'Loading_screen' -- don't touch this

local allowCountdown = false

function onStartCountdown() -- No countdown yet
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost() -- sprite loading
	makeLuaSprite('Loading_screen', 'Loading_screen', 0.3, 0)
	runTimer('fadeTimer', 3.0, 1)

	addLuaSprite('Loading_screen', true)
	setObjectCamera('Loading_screen', 'camOther')
end

function onTimerCompleted(tag) -- bye bye loading screen
    if tag == 'fadeTimer' then
	    doTweenAlpha('delete', 'Loading_screen', 0, 0.5, 'backIn')
		allowCountdown = true
		startCountdown()
		
	end
end

function onTweenCompleted(tag) -- everything goes bye bye
    if tag == 'delete' then
	    removeLuaSprite('Loading_screen', true)
		
	end
end