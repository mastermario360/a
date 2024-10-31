local angleshit = 1;
local anglevar = 1;
local followchars = true;
function onCreate()
	makeAnimatedLuaSprite('space', 'space', -450, -200);
  addAnimationByPrefix('space','space','space',24,true);
	addLuaSprite('space',false)
	setLuaSpriteScrollFactor('space', 0.1, 0.1);
	makeLuaSprite('erectglow', 'parkangry/erectglow', -250, -500);
	setBlendMode('erectglow', 'add')
	makeAnimatedLuaSprite('fireball', 'parkangry/erectball', 240, -50);
	addAnimationByPrefix('fireball','parkangry/erectball','fireball',24,true);

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

	  makeLuaSprite('lights', 'lights', -550, -100);
	  setLuaSpriteScrollFactor('ground', 0.9, 0.9);
		setBlendMode('lights','add')
			addLuaSprite('lights', false);
		addLuaSprite('fireball',false);
				addLuaSprite('erectglow',true);

     xx = 420.95;
     yy = 313;

		setProperty('defaultCamZoom', 0.7)
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
setProperty('scoreTxt.visible', true)
if mustHitSection == true then
		setProperty('defaultCamZoom',0.6)
		end
if mustHitSection == false then
    setProperty('defaultCamZoom',0.8)
	  end

end
