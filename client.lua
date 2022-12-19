
local screenWidth, screenHeight = guiGetScreenSize()

local page = "http://mta/loginv5/index.html"
local initBrowser = guiCreateBrowser(0, 0, screenWidth, screenHeight, true, false, false)
local theBrowser = guiGetBrowser(initBrowser)
addEventHandler("onClientBrowserCreated", theBrowser, 
	function()
		loadBrowserURL(source, page)
		showCursor(true)	
        startIntro()
	end
)

addEvent("onClientPlayerLogin", true)
addEventHandler("onClientPlayerLogin", root,
	function()
		destroyElement(initBrowser)
		showCursor(false)
		destroyElement(IntroSong)
	end
)

function cmsg(login, password, command)
	if (command == "register") then
	triggerServerEvent("register", resourceRoot, login, password)
	end
end
addEvent("cmsg", true)
addEventHandler("cmsg", root, cmsg)

function ssj(login, password, comand)
	if (comand == "log") then
		triggerServerEvent("login", resourceRoot, login, password)
	end
end
addEvent("ssj", true)
addEventHandler("ssj", root, ssj)


function cm(cod)
	if (cod == "gu") then
		destroyElement(initBrowser)
	    showCursor(false)
		destroyElement(IntroSong)
	end
end
addEvent("cm", true)
addEventHandler("cm", root, cm)

function startIntro()
	if isElement(IntroSong) then destroyElement(IntroSong) end
	IntroSong = playSound("intro.MP3")
	setSoundVolume(IntroSong, 1.0)
end