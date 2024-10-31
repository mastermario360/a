local xx = 980;
local yy = 670;
function onCreate()
	makeLuaSprite('ground', 'park/foreground', -620+800, -227+400);
	setLuaSpriteScrollFactor('ground', 1, 1);

	makeLuaSprite('bggg', 'park/parkback', -620+800, -227+200);
	setLuaSpriteScrollFactor('bggg', 0.4, 0.4);

  makeLuaSprite('build', 'park/buildings', -620+600, -260+50);
	setLuaSpriteScrollFactor('build', 0.32, 0.32);

	makeLuaSprite('buildbg', 'park/buildingsbg', -620+600, -260+200);
	setLuaSpriteScrollFactor('buildbg', 0.25, 0.25);


	addLuaSprite('buildbg',false);
  addLuaSprite('build',false);
	addLuaSprite('bggg',false);
 	addLuaSprite('ground', false);

	makeAnimatedLuaSprite('walk', 'walk', 1300+800, 200+400);
	addLuaSprite('walk',false)
  setLuaSpriteScrollFactor('walk', 1, 1);
	

 end
