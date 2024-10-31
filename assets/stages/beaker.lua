local angleshit = 1;
local anglevar = 1;
local followchars = true;
function onCreate()
	makeAnimatedLuaSprite('space', 'space', -480, -200);
  addAnimationByPrefix('space','space','space',24,true);
	addLuaSprite('space',false)
	setLuaSpriteScrollFactor('space', 0.1, 0.1);
	scaleLuaSprite('space', 1, 1)
	makeLuaSprite('bartop','',0,0)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,620)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')

	  makeLuaSprite('lights', 'lights', -650, -200);
	  setLuaSpriteScrollFactor('ground', 0.9, 0.9);
		setBlendMode('lights','add')

		addLuaSprite('lights', true);
		scaleLuaSprite('lights', 1.2, 1,2);

     xx = 420.95;
     yy = 313;

end
function onBeatHit()
if (curBeat % 4 == 0) then
	objectPlayAnimation('space','space',true)
	 end
end
function onUpdate()
setProperty('timeTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('healthBarBG.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
setProperty('scoreTxt.visible', false)

if mustHitSection == true then
		setProperty('defaultCamZoom',1.2)
		end
if mustHitSection == false then
    setProperty('defaultCamZoom',0.6)
	  end
end
