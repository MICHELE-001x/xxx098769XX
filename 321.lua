--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.8) ~  Much Love, Ferib 

]]--

repeat task.wait();until game:IsLoaded() local v0=require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));local v1={};local v2={};local v3={"VIP","Portals","Cat Throne Room","Secret House","Secret Vault","Doodle Barn","Steampunk Chest","Alien Chest","Limbo","Shop","Fantasy Shop","Tech Shop","The Void","Tech Entry"};local v4={};if table.find(v1,game:GetService("Players").LocalPlayer.Name) then print("Username On Blacklist Stopping Farming Fruits");return;end local v5=game:GetService("HttpService");local v6=game:GetService("TeleportService");local v7={};print("Getting servers from Roblox API");local v8=1;local v9="";repeat local v25="https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;if (v9~="") then v25=v25   .. "&cursor="   .. v9 ;end local v26,v27=pcall(function()return v5:JSONDecode(game:HttpGet(v25));end);RblxServerSite=v27;for v61,v62 in pairs(RblxServerSite.data) do table.insert(v7,v62);end v9=RblxServerSite.nextPageCursor or "" ;v8=v8 + 1 ;until (v9=="") or (v8>2)  for v28= #v7,2, -1 do local v29=math.random(v28);v7[v28],v7[v29]=v7[v29],v7[v28];end function ServerHop()local v32=false;local v33;local v34;local v35;local v36="NiggaScriptAntiSameServer.json";local v37;local v38;if  not isfile(v36) then writefile(v36,v5:JSONEncode({game.JobId}));end local v39,v40=pcall(function()v37=v5:JSONDecode(readfile(v36));end);local v41,v42=pcall(function()for v71,v72 in ipairs(v7) do v33=v72.id;if ((typeof(v37)=="table") and  not table.find(v37,v33) and v72.playing and v72.ping) then v32=true;v33=v72.id;v35=v72.ping;local v78,v79=pcall(function()if  not isfile(v36) then json=v5:JSONEncode({v33});writefile(v36,json);else v38=v5:JSONDecode(readfile(v36));table.insert(v38,v33);json=v5:JSONEncode(v38);writefile(v36,json);end end);if ((typeof(v37)=="table") and  not table.find(v37,v33)) then print("Teleporting To "   .. v33   .. " With "   .. v35   .. " Ping"   .. " And "   .. v72.playing   .. "/"   .. v72.maxPlayers   .. " Players" );v6:TeleportToPlaceInstance(game.PlaceId,v33,LocalPlayer);task.wait(1.3);end end end if  not v32 then print("Server Not Found Teleporting With Shit Method");v6:Teleport(game.PlaceId);task.wait(1.3);end end);end local v10=v0.Network.Fire,v0.Network.Invoke;local v11;v11=hookfunction(getupvalue(v10,1),function(...)return true;end);local v12=require(game:GetService("ReplicatedStorage"):FindFirstChild("BlunderList",true));local v13=v12.getAndClear;setreadonly(v12,false);local function v14(v43)return v43;end v12.getAndClear=function(...)local v44=...;for v63,v64 in next,v44.list do if (v64.message~="PING") then v14(v64.message);table.remove(v44.list,v63);end end return v13(v44);end;local v16=require(game:GetService("ReplicatedStorage").Library.Audio);local v17;v17=hookfunction(v16.Play,function(...)local v45=...;if ((v45=="rbxassetid://7009904957") or (v45=="rbxassetid://7000720081") or (v45=="rbxassetid://7358008634")) then return nil;else return v17(...);end end);local v18=require(game:GetService("ReplicatedStorage").Library.Client.WorldCmds);for v46,v47 in pairs(getconstants(v18.Load)) do if (v47=="Sound") then setconstant(v18.Load,v46,"ADAWDAWDAWD");end end local v19={};for v48,v49 in pairs(v0.Directory.Fruits) do if  not table.find(v4,v48) then table.insert(v19,v49.Coin);end end local v20={};for v50,v51 in pairs(v0.Directory.Areas) do if ( not v51.hidden and  not table.find(v3,v51.name) and  not table.find(v2,v51.world)) then v20[v51.id]=v50;end end local v21={};for v52,v53 in pairs(v0.Directory.Areas) do if ( not v53.hidden and  not table.find(v3,v53.name) and  not table.find(v2,v53.world) and  not table.find(v21,v53.world)) then table.insert(v21,v53.world);end end function GetEquipped()local v54={};for v65,v66 in pairs(v0.PetCmds.GetEquipped()) do table.insert(v54,v66.uid);end return v54;end function FarmCoin(v55)v0.Network.Invoke("Join Coin",v55,GetEquipped());for v67,v68 in pairs(GetEquipped()) do v0.Network.Fire("Farm Coin",v55,v68);end end function RemoveValueFromTable(v56,v57)local v58=1;while v58<= #v56  do if (v56[v58]==v57) then table.remove(v56,v58);else v58=v58 + 1 ;end end end local v22=getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Teleport);local v23;local v24={};for v59,v60 in pairs(v21) do if (v0.WorldCmds.Get()~=v60) then v0.WorldCmds.Load(v60);end repeat task.wait();until v0.WorldCmds.HasLoaded() for v69,v70 in pairs(v0.Network.Invoke("Get Coins")) do if (table.find(v19,v70.n) and  not table.find(v24,v70.a)) then v23=v70.a;v22.Teleport(v70.a,true);table.insert(v24,v70.a);end if ((v70.a==v23) and table.find(v19,v70.n)) then print("Farming "   .. v70.n   .. " Fruit" );FarmCoin(v69);end end end task.wait(0.5);ServerHop();