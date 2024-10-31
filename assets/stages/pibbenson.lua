local angleshit = 1
local anglevar = 1
local followchars = true
function onCreate()

	makeLuaSprite('bartop','',0,-30)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,650)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')
	end

function onCreatePost()
	makeLuaSprite('fg', 'pibben/fg', -1400, 700)
	setScrollFactor('fg', 1.2, 1.2)

	makeLuaSprite('hm', 'pibben/hm', -1400, -300)
		setBlendMode('hm', 'subtract')


	makeAnimatedLuaSprite('glitch', 'pibben/glitch', -1000, 356)
	addAnimationByPrefix('glitch','glitch','glitch',24,true)
	setScrollFactor('glitch', 0.9, 0.9)

	makeLuaSprite('bg', 'pibben/bg', -1000, -100)
	setScrollFactor('bg', 0.7, 0.7)

	makeLuaSprite('trees', 'pibben/trees', -250, -80)
	setScrollFactor('trees', 0.6, 0.6)

	makeLuaSprite('overlay', 'pibben/overlay', -900, -700)
	setBlendMode('overlay', 'add')
	setScrollFactor('overlay', 0.5, 0.5)

	makeLuaSprite('overlay2', 'pibben/overlay2', -900, -700)
	setBlendMode('overlay2', 'add')

	makeLuaSprite('build', 'pibben/build', -500, -170)
	setScrollFactor('build', 0.3, 0.3)

	makeLuaSprite('brid', 'pibben/brid', -1200, 280)
	setScrollFactor('brid', 0.95, 0.95)

	makeLuaSprite('sky', 'pibben/sky', -900, -650)
	setScrollFactor('sky', 0.1, 0.1)
	setProperty('overlay.alpha', 0.7)
	setProperty('overlay2.alpha', 0)
	setProperty('hm.alpha', 0)

	addLuaSprite('sky',false)
	addLuaSprite('build',false)
	addLuaSprite('trees',false)
	addLuaSprite('bg',false)
	addLuaSprite('brid',false)
	addLuaSprite('fg',true)
	addLuaSprite('glitch',false)
	addLuaSprite('overlay',true)
	addLuaSprite('overlay2',true)
	addLuaSprite('hm',true)
	xx = 420.95
	yy = 313


	setProperty('timeTxt.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)

end
function onBeatHit()
	if curBeat % 4 == 0 then
		objectPlayAnimation('space','space',true)
	end
	if curBeat == 128 then
		doTweenAlpha('night1', 'hm', 1, 70, 'linear')
		doTweenAlpha('night2', 'overlay', 0, 40, 'linear')
		doTweenAlpha('night3', 'overlay2', 1, 40, 'linear')
		doTweenY('night4', 'sky', 0.2, 120, 'linear')
	end
end

function onUpdate()
	if mustHitSection == true then
		setProperty('defaultCamZoom',1)
	end
	if mustHitSection == false then
		setProperty('defaultCamZoom',0.6)
	end
end
