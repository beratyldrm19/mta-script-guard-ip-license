--başlarına local alma amacım luac decombiler karşı önlem
local _print__ = print
local _dbConnecttt__ = dbConnect
local setFPSLimit___ = setFPSLimit


local woodieconnect = _dbConnecttt__("mysql", "dbname=database ismi;host=localhost;charset=latin1", "root", "password gir", "autoreconnect=1" )
local deneme312312231 =  _print__("World Scripting - License Information")
local denemeasdsad = addEventHandler("onResourceStart",resourceRoot,function()
  if woodieconnect then 
    print("Database Connect , Verifying License...")
    setTimer(function()
local deneme = dbQuery(function(qh)
    for v, k in ipairs((dbPoll(qh, 0, false))) do
      local getip = k.ip
      if k.key == licensekey then       
          if hasObjectPermissionTo ( getThisResource (), "function.fetchRemote", true) then
            fetchRemote("https://api.my-ip.io/ip", function(getlocalip)
              if getlocalip == getip then
                _print__("World Scripting License Verified")
              else
                _print__("World Scripting - Çalıntı Sistem Tespit Edildi")  --ip eşleşmedi
                stopResource(getThisResource())
                setFPSLimit___(25)
                function chatbox(thePlayer, cmd)
                  for k, v in pairs(getElementsByType("player")) do
                  outputChatBox("World Scripting Çalıntı Paket ", v, 255,255,255)
              end
            end
         setTimer(chatbox,0,500)
      end
    end)
   end   
      else
        _print__("World Scripting - Key Veri Tabaninda Bulunamadi") --key eşleşmedi
        stopResource(getThisResource())
        setFPSLimit___(25)
        function chatbox(thePlayer, cmd)
          for k, v in pairs(getElementsByType("player")) do
          outputChatBox("World Scripting Çalıntı Paket ", v, 255,255,255)
       end
      end
     setTimer(chatbox,0,500) 
    end
   end
  end, woodieconnect, "SELECT * FROM table_ismi ")
 end ,5000,1)
  else
    print("Database Error , Woodie İle İletişime Geçin")
    stopResource(getThisResource())
  end
end)

