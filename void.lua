]]
--[[
                                                                     
                                                             dddddddd
VVVVVVVV           VVVVVVVV                iiii              d::::::d
V::::::V           V::::::V               i::::i             d::::::d
V::::::V           V::::::V                iiii              d::::::d
V::::::V           V::::::V                                  d:::::d 
 V:::::V           V:::::V ooooooooooo   iiiiiii     ddddddddd:::::d 
  V:::::V         V:::::Voo:::::::::::oo i:::::i   dd::::::::::::::d 
   V:::::V       V:::::Vo:::::::::::::::o i::::i  d::::::::::::::::d 
    V:::::V     V:::::V o:::::ooooo:::::o i::::i d:::::::ddddd:::::d 
     V:::::V   V:::::V  o::::o     o::::o i::::i d::::::d    d:::::d 
      V:::::V V:::::V   o::::o     o::::o i::::i d:::::d     d:::::d 
       V:::::V:::::V    o::::o     o::::o i::::i d:::::d     d:::::d 
        V:::::::::V     o::::o     o::::o i::::i d:::::d     d:::::d 
         V:::::::V      o:::::ooooo:::::oi::::::id::::::ddddd::::::dd
          V:::::V       o:::::::::::::::oi::::::i d:::::::::::::::::d
           V:::V         oo:::::::::::oo i::::::i  d:::::::::ddd::::d
            VVV            ooooooooooo   iiiiiiii   ddddddddd   ddddd

    •        V                  O            I             D        •
                             Reborn
                [--> richboysturmgeist & blizex <--]
]]

--[[

    * Void : Documentary
    im lazy to update this lol so kys i aint updating it u figure shit out by urself
        Silentbot: 
        {
            Finding = <type> where 0 = nearest_to_mouse; 1 = nearest_to_self_character; [not being worked on anymore and will always be nearest to mouse]
            Hitting = <type> where 0 = nearest_point; 1 = primary_part; 2 = custom part; 3 = random part
            RotateChar = <bool> where true = primarypart.CFrame = predicted_pos; false = void (maybe use for hvh? if you want them to show that ur a COOOOL kid)
            FOV:
            {
                Enabled = <bool>
                Radius = <digit/float> where FOV_Silent.Radius = Radius;
                Color = <color3> where FOV_Silent.Color = Color
                Rainbow = <bool> where Rainbow = true: while true loop hue incrementing by 0.01 and if equal or bigger than 1 then reset back to 0
                RainbowSpeed = <float/digit>
                Filled = <bool>
                NumSides = <digit>
                Thickness = <digit>
                
                Tracer = <bool> where Tracer = true and FOV_Tracer.Visible = Tracer
                TracerColor = <color3>
                TracerThickness = <digit>
            }
            Prediction:
            {
                Automatic:
                {
                    Enabled = <bool>
                    Mode = <string> where Advanced = will set a metatable and set its index to check if its a number and if it is then it will check for their magnitude from your primarypart pos to the silent target and if its far then GenPred(ping, 'far') [e.g]
                }
                Amount = <float/digit>
            }
            BasePart = <string> where SilentTarget.Character[BasePart] (if silentbot.hitting == 2)
            AutomaticResolver = <bool>
            ResolverMethod = <string>
            Resolver:
            {
                AutomaticPred = <bool> where AutomaticPred = true and suggested_pred (all of them has to have preds)
                MoveDirection = <float/digit>
                LookVector = <float/digit>
                Delta = <float/digit>
            }
            HitChance:
            {
                Enabled = <bool>
                Chance = <float/digit>
                Intensity = <float/digit> (how intense the division will be)
            }
        }
        $$ AIMBOT ISNT FINSIHED YET SO WAIT FOR ITS DOCUMENTARY LATER UPDATES $$
        Aimbot:
        {
            Finding = <type> where 0 = nearest_to_mouse; 1 = nearest_to_self_character;
            Hitting = <type> where 0 = nearest_point; 1 = primary_part; 2 = custom part
        }
        Triggerbot:
        {
            Prediction:
            {
                Enabled = <bool>
                Amount = <float/digit>
                Method = <digit> where 0 = accurate | 1 = less accurate | 2 = in beta, dont try to use (else it will error)
            }
            Delay:
            {
                Enabled = <bool>
                Delay = <float/digit> where real_delay = formula(Delay.Delay / 1000);
            }
            Radius: {
                Enabled = <bool>
                Amount = <float/digit>
            } (basically if they arent in that radius then it wont shoot them (idk why this would be useful since they have to be near u but if u also using pred it will help :D))
            HitParts = <bool> | <table> where typeof(HitParts) == 'boolean': all hit parts | typeof(HitParts) == 'table': if not table.find(HitParts, part.ClassName) then jmp to b1 ... where b1 : Shoot = false (shoot is a boolean that will indicate if it will shoot or not, this is where most checks take place)
            Mode = <string> where Mode = 'Legit' : mouse1click() | Mode = 'Blatant' : holds the click (like it shoots them like when u hold on the trigger to a automatic gun)
        }
        Global:
        {
            Whitelisted:
            {

            } <-- Table of whitelisted players (people who not to attack, next update you will be able to add them manually just by clicking L, which will create a highlight instance and highlight the nearest player then whenever u click on it, thats the player who its gonna whitelist)
            Checks:
            {
             -- Player checks
            Character       = <bool>; -- Checks if they have a character (nearest func)
            PrimaryPart     = <bool>; -- Checks if they have a primary part (nearest func)
            Teamcheck       = <bool>; -- Checks if they are on the same team as you (nearest func / triggerbot)
            Whitelisted     = <bool>; -- Checks if they are in the whitelist table (nearest func / triggerbot)
            Friends         = <bool>; -- Checks if they are on your friend list (nearest func / triggerbot)
            Dead            = <bool>; -- Checks if they are dead using the K.O Boolean value (nearest func / triggerbot)
            Wallcheck       = <bool>; -- Checks if they are behind a wall (nearest func)
            Visible         = <bool>; -- Checks if they are visible on your screen (2 dimensional viewport) (nearest func)
            Anti            = <bool>; -- Checks if their velocity are weirdly higher than normal (nearest func)
            Grabbed         = <bool>; -- Checks if they are grabbed (nearest func)
            -- Self checks
            Reloading       = <bool>; -- Checks if self reloading [W.I.P] (lock/silent/triggerbot)
            SelfDead        = <bool>; -- Checks if you are dead (lock/silent/triggerbot)
            LocalPlayer     = <bool>; -- Checks if the player that is trying to grab is yourself or not (nearest func / triggerbot)
            }
            Keybinds:
            {
                ... your keybinds here
            }
        }
        <!-- MISC --!>
        MemSpoofer:
        {
            Enabled = <bool>
            Range:
            {
                [<digit>] = <float/digit>
                [#Range + 1] = <float/digit>
            }
            Delay = <float/digit>
        }
        Mod:
        {
            Enabled = true;
            OnJoin = <type> where string Kick = selfPlayer:Kick(); string Notify = coreGuiNotify;
            Notification = <any>
            Delay = <float/number> where task.wait(<float/number>); jmp to mod_action ...
        }
        Spinning:
        {
            Cam:
            {
                Enabled = <bool>
                Degrees = <float/digit>
                Speed = <float/digit>
            }
            Char:
            {
                Enabled = <bool>
                Degrees = <float/digit>
                Speed = <float/digit>
            }
        }
        Intro:
        {
            Enabled = <bool>
            Type = <string> (only Game supported, console no longer has support, might add next update)
            Logo = <digit> (listed in the line comment from there)
        }
        -- Panic
        Panic   = <bool>; -- Self explanatory
        AntiLog = <bool>; -- Disables errors in dev console (incase someone tries checking you)
        -- Blatant
        Lock    = <bool>; -- Self explanatory
        Silent  = <bool>; -- Self explanatory
        TBot    = <bool>; -- Self explanatory (triggerbot)
        Macro       = <bool>; -- Macro
        AlreadyExists   = <string> where alreadyexists = 'notification': alert you that its loaded already | alreadyexists = 'reload': reloads the script; -- If void is already loaded
        UnlockFPS   = <bool>; -- Uncaps FPS to 0 (meaning you can achieve the most frames rendered/s)
        -- Anticheat Bypass --
        BypassAC    = <bool>; -- Bypasses Adonis and normal DH Anticheat.
        BypassOnlyAdonis = <bool>; -- keep this on if you don't want like 50 fps drops in 1 render :troll:
        -----------------------------------------
        -- Misc (SPECIAL) --
        InventorySorter:
        {
            Enabled = true;
            List    = {
                    Explanation:
                    [1] = 'DB'; -- DB | DoubleBarrel | Double-Barrel (all aliases)
                    Or
                    'DB',
                    'Rev'
                    <^^> example

                'DB';
                'Rev';
                'Katana';
                'Phone';
                -- put ur shit in here gg
            };
            -- Full list of aliases:
                Double Barrel: ['DB', 'DoubleBarrel', 'Double-Barrel']
                Revolver: ['Rev', 'Revolver']
                Katana: ['Katana']
                Phone: ['Phone']
                Tactical Shotgun: ['TacticalShotgun', 'TSG', 'Tactical-Shotgun']
                Shotgun: ['Shotgun', 'SG']
                
                more being added soon (i dont play dh so idk other names)
                also, make sure to like have the same correspoding case method (for example if u put db it wont work, you must have it uppercase)
        }; -- Auto sorts your inventory each time you click a key
]]

-- Already loaded check --
--[[
if (getgenv().Void) and tostring(getgenv().Void.Misc.AlreadyExists):lower() == 'notification' then 
    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = 'Void';
        Text = 'Void is already loaded!'
    });
    do return end;
elseif (getgenv().Void) and tostring(getgenv().Void.Misc.AlreadyExists):lower() == 'reload' then
    local environment = getfenv(getgenv().Void._);
    coroutine.wrap(setfenv(function() 
        VOID_CONSTRUCTORS:Panic();
    end, environment))();
    getgenv().Void = nil;
    return;
end;
]]
--------------------------------
getgenv().Void = 
{
    Aiming = 
    {
        -- Silentbot
        Silentbot =
        {
            Strafe = {
                Enabled = true;
                Offset = {
                    X = 0;
                    Y = 0;
                    Z = 0;
                };
                Do360 = true; -- If enabled, the x offset won't be taken in usage.
                Speed = 5;
            }; -- If enabled, whenever you press the target strafe keybind, it will strafe them 
            Distances = {
                Far = 85;
                Mid = 45;
                Close = 25;
            }; -- Later used for advanced pred (each number key from this table is gonna be a magnitude comparision)
            -- Aiming & Finding method
            Finding = 0;
            Hitting = 0;
            -- Targetting
            FOV = {
                Enabled = true;
                -- Circle --
                Circle = true; -- Show circle or not, FOV still can be used without, since it will modify the radius
                Radius = 120; -- This will be used in the get nearest function
                Color = Color3.fromRGB(174, 65, 92);
                ------------
                -- Rainbow --
                Rainbow = true; -- Rainbow color
                RainbowSpeed = 0.025; -- Rainbow Speed
                ------------
                Filled = false;
                NumSides = 1024;
                Thickness = 1;
                ------------
                -- Misc
                Tracer = true; -- Use tracer (Drawing.new('Line'); .From, .To (thanks to drawing lib for the calculations))
                TracerColor = Color3.fromRGB(200, 46, 71);
                TracerThickness = 1.5;
                ------------
                -- Rainbow --
                RainbowTracer = true; -- Rainbow color
                ------------
            }; -- FOV
            Prediction = {
                Automatic = {
                    Enabled = false;
                    Mode = 'Advanced'; -- Advanced / Unadvanced (advanced = uses pred generator that is accurate / unadvanced = just uses ping based sets and sets their value as the pred)
                    Sets = {
                        [30] = 0.11;
                        [40] = 0.1256;
                        [50] = 0.112;
                        [60] = 0.1335;
                        [70] = 0.131;
                        [80] = 0.132;
                        [90] = 0.136;
                        [105] = 0.138;
                        [110] = 0.146;
                        [120] = 0.149;
                        [130] = 0.151;
                        [140] = 0.153;
                    }; -- Add ur ping sets in here
                };
                Enabled = true;
                Amount = 0.1804;
            };
            -- Misc
            BasePart = 'HumanoidRootPart'; -- If Hitting == 3 then it will target this part inside their character
            RotateChar = false; -- Rotate your character to their pos as ur silenting on them (can fling you)
            AutomaticResolver = true; -- If they get detected for using anti, turn on a resolver
            ResolverMethod = 'v4'; -- v1: MoveDirection ; v2: LookVector ; v3: 0 pred ; v4: Delta
            Resolver = {
                AutomaticPred = false; -- Will detect what resolver is being used and generate a random input from the suggested values (e.g: movedirection (between 1.2 and 2))
                -- Predictions
                MoveDirection = 1.35;
                LookVector = 1.25;
                Delta = 3.25;
            };
            HitChance = {
                Enabled = false;
                Chance = 60;
                Intensity = 1.25; -- Higher = more chance to hit; Lower = less chance to hit
            };
            Miss = {
                Enabled = false;
                Chance = 50;
                Intensity = {
                    -- Vectors
                    X = {
                        0.25;
                        0.85;
                    };
                    Y = {
                        0.15;
                        1.35;
                    };
                    Z = {
                        0.50;
                        1;
                    };
                }; -- Miss Intensity
            }; -- Beta
        };
        -- Aimbot
        Aimbot = {
            Distances = {
                Far = 55;
                Mid = 25;
                Close = 15;
            }; -- Later used for advanced pred (each number key from this table is gonna be a magnitude comparision)
            -- Aiming & Finding method
            Finding = 0;
            Hitting = 0;
            -- Targetting
            FOV = {
                Enabled = true;
                -- Circle --
                Circle = true; -- Show circle or not, FOV still can be used without, since it will modify the radius
                Radius = 180; -- This will be used in the get nearest function
                Color = Color3.fromRGB(255, 0, 0);
                ------------
                -- Rainbow --
                Rainbow = false; -- Rainbow color
                RainbowSpeed = 0.025; -- Rainbow Speed
                ------------
                Filled = false;
                NumSides = 1024;
                Thickness = 1;
                ------------
                ------------
            }; -- FOV
            Prediction = {
                Automatic = {
                    Enabled = false;
                    Mode = 'Advanced'; -- Advanced / Unadvanced (advanced = uses pred generator that is accurate / unadvanced = just uses ping based sets and sets their value as the pred)
                    Sets = {
                        [30] = 0.11;
                        [40] = 0.1256;
                        [50] = 0.112;
                        [60] = 0.1335;
                        [70] = 0.131;
                        [80] = 0.132;
                        [90] = 0.136;
                        [105] = 0.138;
                        [110] = 0.146;
                        [120] = 0.149;
                        [130] = 0.151;
                        [140] = 0.153;
                    }; -- Add ur ping sets in here
                };
                Enabled = true;
                Amount = 0.1859;
            };
            -- Misc
            BasePart = 'HumanoidRootPart'; -- If Hitting == 3 then it will target this part inside their character
            RotateChar = false; -- Rotate your character to their pos as ur locking on them (can fling you)
            AutomaticResolver = false; -- If they get detected for using anti, turn on a resolver
            ResolverMethod = 'v2'; -- v1: MoveDirection ; v2: LookVector ; v3: 0 pred ; v4: Delta
            Resolver = {
                AutomaticPred = false; -- Will detect what resolver is being used and generate a random input from the suggested values (e.g: movedirection (between 1.2 and 2))
                -- Predictions
                MoveDirection = 1.35;
                LookVector = 1.25;
                Delta = 3.25;
            };
            Shake = {
                Enabled = false;
                X = 
                {
                    Random = 
                    {
                        0.2;
                        1.2;
                    };
                };
                Y = 
                {
                    Random = 
                    {
                        0.2;
                        0.5;
                    };
                };
                Z = 
                {
                    Random = 
                    {
                        0.4;
                        0.85;
                    };
                };
            };
            Smoothness = {
                Enabled = false;
                Amount = 0.1246;
                --------------------
                EasingStyle = 'Sine'; -- Linear, Sine, Back, Quad, Quart, Quint, Bounce, Elastic, Exponential, Circular, Cubic [https://create.roblox.com/docs/reference/engine/enums/EasingStyle, https://prod.docsiteassets.roblox.com/assets/legacy/EasingStyles.jpg]
                EasingDirection = 'InOut'; -- In, Out, InOut [https://create.roblox.com/docs/reference/engine/enums/EasingDirection]
            };
        };
        Triggerbot = {
            Prediction = {
                Enabled = true; -- If not enabled it will be like theother shit triggerbots xD
                Amount = 20; -- Keep it between 10 - 20 (if you don't want it shooting idk where)
                -- Pred method --
                Method = 0; -- 0 = most accurate | 1 = less accurate | 2 = beta not finished
            };
            Delay      = {
                Enabled = false;
                Delay = 500; -- Miliseconds (formula: Delay.Delay / 1000)
            };
            Radius = {
                Enabled = true;
                Amount = 40;
            }; -- yeah im not adding a fov fuck you dude
            HitParts   = true; -- If table then : Table of what parts it can hit | If boolean and boolean := true all hit parts
            -- Misc
            Mode = 'Legit'; -- Uses mouse1click if mode is legit, else uses mouse1press & mouse1release (more blatant)
        };
    };
    Global =
    {
        Whitelisted = {
            
        }; -- Table of whitelisted players that won't get aimed at
        Checks = {
            -- Player checks
            Character       = true; -- Checks if they have a character (nearest func)
            PrimaryPart     = true; -- Checks if they have a primary part (nearest func)
            Teamcheck       = false; -- Checks if they are on the same team as you (nearest func / triggerbot)
            Whitelisted     = true; -- Checks if they are in the whitelist table (nearest func / triggerbot)
            Friends         = true; -- Checks if they are on your friend list (nearest func / triggerbot)
            Dead            = true; -- Checks if they are dead using the K.O Boolean value (nearest func / triggerbot)
            Wallcheck       = true; -- Checks if they are behind a wall (nearest func)
            Visible         = true; -- Checks if they are visible on your screen (2 dimensional viewport) (nearest func)
            Anti            = true; -- Checks if their velocity are weirdly higher than normal (nearest func)
            Grabbed         = true; -- Checks if they are grabbed (nearest func)
            -- Self checks
            Reloading       = true; -- Checks if self reloading [W.I.P] (lock/silent/triggerbot)
            SelfDead        = true; -- Checks if you are dead (lock/silent/triggerbot)
            LocalPlayer     = true; -- Checks if the player that is trying to grab is yourself or not (nearest func / triggerbot)
        }; -- Global checks, so these go for silent and lock together. (disable a few if you are not on da hood)
        Keybinds = {
            -- Aim Helpers
            Silent      = 'P'; -- Enables silentbot (silently target your enemies and whenever you will trigger, it will automatically hit them)
            Lock        = 'Q'; -- Enable aimbot (Blatantly change your camera's coordinate frame position to a predicted position structure which relies on their cframe position + their velocity multiplied by prediction)
            Triggerbot  = 'T'; -- Enable triggerbot (Automatically shoot when you hover over them or if they are close to your mouse (pred) )
            -- Misc
            CamSpin     = 'X'; -- Does a 360 rotation of the camera
            CharSpin    = 'B'; -- Does a 360 rotation of your character primary part
            Panic       = 'K'; -- Unloads the script fully
            SilentStrafe= 'L';
            -- Legit
            Macro       = 'Z'; -- Legit macro (not blatant like void v3 macro)
            AutoSortInv = 'C'; -- Auto sort inventory (OP)
            BadTalk     = 'M'; -- Bad talk
            LagSpike    = 'V'; -- Lag Spike (temporary, will actually disconnect you so it looks more legit)
        };
    };
    Misc =
    {
        Settings = {
            Legit = {
                LowGFX = true;
                NoBulletDelay = true;
            };
            Blatant = {
                AntiMacroFling = false; -- Makes your PrimaryPart Velocity be 0, 0, 0 in a loop (can also break prediction on normal locks since they are multiplying 0 by their pred)
            };
        }; -- Important (these settings will only take place when you load the script, so modifying them while the script is running won't do anything)
        -- 360 Cam & Char Spin
        Spinning = {
            Cam = {
                Enabled     = true;
                Degrees     = 360; -- Rotation in degrees
                Speed       = 3.5; -- Rotation speed
            }; -- 360 Cam Spin
            Char = {
                Enabled     = false;
                Degrees     = 360; -- Rotation in degrees
                Speed       = 3.5; -- Rotation speed
            }; -- 360 Char Spin
        };
        -- Mod kick
        Mod     = {
            Enabled     = true;
            OnJoin      = 'Kick';
            Notification= '[Void]: MOD Detected!';
            Delay       = 2; -- delay (so it won't look blatant)
            Rank        = 233; -- modify this for like their rank (if you own a gc you will know)
        }; -- Whenever a mod joins your game
        -- Intro
        Intro   = {
            Enabled     = true;
            Type        = 'Game'; -- Game: Will use blur and make a image label with our logo | Console: Watermark & other info
            Logo        = 2; -- Will use the first logo if 1, or use the new logo if 2
            -- Also, If you select console type of intro, then there are 20 watermarks, from 0 to 24.
        };
        -- Panic
        Panic   = true; -- Self explanatory
        AntiLog = true; -- Disables errors in dev console (incase someone tries checking you)
        -- Blatant
        Lock    = true; -- Self explanatory
        Silent  = true; -- Self explanatory
        TBot    = true; -- Self explanatory (triggerbot)
        LagSpike = {
            Enabled     = true;
            Amount      = 9999; -- Amount of lag
        }; -- Self explanatory
        -----------------------------------------
        -- Other --
        MemSpoofer   = {
            Enabled = true;
            Range = {
                400;
                500;
            };
            Delay = 0;
            -- Misc --
            Method = 0; -- 0 = Default method (changes it's text each render then waits until the next frame after finishing delaying) | 1 = (old one as void v3)
        };
        Watermark   = {
            Enabled = false;
        }; -- little watermark
        Macro       = {
            Enabled = true;
            Mode    = 'Legit'; -- Legit : Slower, but looks more legit | Blatant : Very Quick
            Method  = 'Keypress'; -- Keypress | virtual
        }; -- Macro
        AlreadyExists   = 'notification'; -- If void is already loaded
        UnlockFPS   = true; -- Uncaps FPS to 0 (meaning you can achieve the most frames rendered/s)
        -- Anticheat Bypass --
        BypassAC    = true; -- Bypasses Adonis and normal DH Anticheat.
        BypassOnlyAdonis = true; -- keep this on if you don't want like 50 fps drops in 1 render :troll:
        -----------------------------------------
        -- Misc (SPECIAL) --
        InventorySorter = {
            Enabled = true;
            List    = {
                --[[
                    Explanation:
                    [1] = 'DB'; -- DB | DoubleBarrel | Double-Barrel
                    Or
                    'DB',
                    'Rev'
                    <^^> example
                ]]
                'DB';
                'Rev';
                'TSG';
                'Katana';
                'Phone';
                'Wallet';
                -- put ur shit in here gg
            };
        }; -- Auto sorts your inventory each time you click a key (food works aswell)
        BadTalk = {
            Phrases = {
                [1] = 'son';
                [2] = 'get better';
                [3] = 'gg ur bad';
            };
            Enabled = true;
        }; -- Sh*t talk (not saying it so i wont trigger some filters when someone posts this table)
    };
    Commands = {
        Prefix = '$';
        Silent = {
            -- Targetting --
            SetPredAmount = 'silentpred'; -- $silentpred 0.1804
            SetFOV = 'silentfovsize'; -- $silentfovsize 120
            DisableFOV = 'silentfovoff'; -- $silentfovoff
            EnableFOV = 'silentfovon'; -- $silentfovon
            SetAutoPred = 'silentautopred'; -- $silentautopred on
            SetAutoPredMode = 'silentautopredmode'; -- $silentautopred advanced
            -- Toggling --
            SetSilent = 'silent'; -- $silent on
            SetRotate = 'silentrotate'; -- $silentrotate off
            SetHitMethod = 'silenthit'; -- $silenthit 0
            SetMiss = 'silentmiss'; -- $silentmiss on
        };
        Lock   = {
            -- Targetting --
            SetPredAmount = 'lockpred'; -- $lockpred 0.1804
            SetFOV = 'lockfovsize'; -- $lockfovsize 120
            DisableFOV = 'lockfovoff'; -- $lockfovoff
            EnableFOV = 'lockfovon'; -- $lockfovon
            SetAutoPred = 'lockautopred'; -- $lockautopred on
            SetAutoPredMode = 'lockautopredmode'; -- $lockautopredmode advanced
            -- Toggling --
            SetLock = 'lock'; -- $lock on
            SetRotate = 'lockrotate'; -- $lockrotate off
            SetHitMethod = 'lockhit'; -- $lockhit 0
            -- Misc --
            SetShake = 'lockshake'; -- $lockshake on
        };
        BadTalk = {
            RemoveAll = 'removebwords'; -- $removebwords
            RemovePhrase = 'removephrase'; -- $removephrase 1 (makes it nil)
            AddPhrase = 'addphrase'; -- $addphrase 1 (BASE64 string) [we use base64 algorithms to safely decode your message and add it as a phrase so you wont get banned] Example: "$addphrase 1 YmxpemV4IHN1Y2tzIGRpY2sgZXo=" 1 is a index (it will index the bad talk table with that index and then forcefully set your base64 decoded string inside)
        };
        Misc    = {
            Reset = 'reset'; -- $reset (force reset)
            Resolver = 'resolver'; -- $resolver
            Rejoin   = 'rejoin'; -- $rejoin (force rejoin)
            SetPrefix = 'setprefix'; -- $setprefix !
        };
    }; -- Chat Commands
};

getgenv().Void._ = function() end; -- Later use for detection of some stuff

assert(getconnections, 'Your executor doesn\'t support getconnections! Please upgrade to a better executor to use Void!');
assert(Drawing, 'Your executor doesn\'t support the drawing library! Please upgrade to a better executor to use Void!');
assert(isrbxactive, 'Your executor doesn\'t support isrbxactive! Please upgrade to a better executor to use Void!');
assert(hookmetamethod, 'Your executor doesn\'t support hookmetamethod! Please upgrade to a better executor to use Void!');
assert(getcustomasset, 'Your executor doesn\'t support getcustomasset! Please upgrade to a better executor to use Void!')

math.randomseed(os.time());

-------------------------------------------
if not isfolder('void') then 
    makefolder('void');
end;
if not isfolder('void/assets') then 
    makefolder('void/assets');
end;
ASSETS = {
    ['void/assets/logo.png'] = game:HttpGet('https://raw.githubusercontent.com/chicagogrimreaper/void/main/logo.png');
    ['void/assets/logo2.png'] = game:HttpGet('https://raw.githubusercontent.com/chicagogrimreaper/void/main/logo2.png');
};
for index, asset in pairs(ASSETS) do 
    writefile(index, asset);
end;
-- Table globals
VOID_CONTRIBUTORS = loadstring(game:HttpGet('https://raw.githubusercontent.com/chicagogrimreaper/void/main/Admins.lua'))();

local SelfPlayerData = {};
if table.find(VOID_CONTRIBUTORS, game:GetService('Players').LocalPlayer.UserId) then 
    rawset(SelfPlayerData, 'Contributor', true);
    rawset(SelfPlayerData, 'ContributorType', rawget(VOID_CONTRIBUTORS, game:GetService('Players').LocalPlayer.UserId));
end;
-- LUARMOR & LURAPH --
if not LPH_OBFUSCATED then 
    LPH_NO_VIRTUALIZE = function(f) 
        return f;
    end;
end;
-------------------------------------------------
VOID_CONSTRUCTORS = {
    Connections = {
        Keybinds        = {};
        Misc            = {};
        CACHE_MEMORY    = {}; -- later used for the mem spoofer
    }; -- RBX SIGNAL CONNECTIONS
    Coroutines  = {
        
    }; -- ALL COROUTINES (most of them are loops so it doesn't stop the execution of code and can run further with no problems :D)
    Booleans = {
        Lock            = false;
        Silent          = false;
        Macro           = false;
        Triggerbot      = false;
        Strafe          = false;
    };
    Data = {
        Lock_Target     = nil;
        Silent_Target   = nil;
        Trigger_Target  = nil;
    };
    Assets = {};
    GameAssets = {
        Logo = getcustomasset('void/assets/logo.png');
        Logo2 = getcustomasset('void/assets/logo2.png');
    };
    WatermarkAssets = {
        [0] = 
            [[
                ____   ____    .__    .___ __________      ___.                        
                \   \ /   /___ |__| __| _/ \______   \ ____\_ |__   ___________  ____  
                 \   Y   /  _ \|  |/ __ |   |       _// __ \| __ \ /  _ \_  __ \/    \ 
                  \     (  <_> )  / /_/ |   |    |   \  ___/| \_\ (  <_> )  | \/   |  \
                   \___/ \____/|__\____ |   |____|_  /\___  >___  /\____/|__|  |___|  /
                                       \/          \/     \/    \/                  \/ 
            ]];
        [1] =
            [[
                _    __      _     __   ____       __                   
                | |  / /___  (_)___/ /  / __ \___  / /_  ____  _________ 
                | | / / __ \/ / __  /  / /_/ / _ \/ __ \/ __ \/ ___/ __ \
                | |/ / /_/ / / /_/ /  / _, _/  __/ /_/ / /_/ / /  / / / /
                |___/\____/_/\__,_/  /_/ |_|\___/_.___/\____/_/  /_/ /_/ 
            ]];
        [2] =
            [[
                _   __     _    __  ___      __               
                | | / /__  (_)__/ / / _ \___ / /  ___  _______ 
                | |/ / _ \/ / _  / / , _/ -_) _ \/ _ \/ __/ _ \
                |___/\___/_/\_,_/ /_/|_|\__/_.__/\___/_/ /_//_/
            ]];
        [3] =
            [[
            ,--.   ,--.     ,--.   ,--.    ,------.        ,--.                          
            \  `.'  /,---. `--' ,-|  |    |  .--. ' ,---. |  |-.  ,---. ,--.--.,--,--,  
             \     /| .-. |,--.' .-. |    |  '--'.'| .-. :| .-. '| .-. ||  .--'|      \ 
              \   / ' '-' '|  |\ `-' |    |  |\  \ \   --.| `-' |' '-' '|  |   |  ||  | 
               `-'   `---' `--' `---'     `--' '--' `----' `---'  `---' `--'   `--''--' 
            ]];
        [4] =
            [[
                __     __    _     _   ____      _                      
                \ \   / /__ (_) __| | |  _ \ ___| |__   ___  _ __ _ __  
                 \ \ / / _ \| |/ _` | | |_) / _ \ '_ \ / _ \| '__| '_ \ 
                  \ V / (_) | | (_| | |  _ <  __/ |_) | (_) | |  | | | |
                   \_/ \___/|_|\__,_| |_| \_\___|_.__/ \___/|_|  |_| |_|
            ]];
        [5] =
            [[
                ____   ____        _        __   _______           __                                 
                |_  _| |_  _|      (_)      |  ] |_   __ \         [  |                                
                  \ \   / / .--.   __   .--.| |    | |__) |  .---.  | |.--.    .--.   _ .--.  _ .--.   
                   \ \ / // .'`\ \[  |/ /'`\' |    |  __ /  / /__\\ | '/'`\ \/ .'`\ \[ `/'`\][ `.-. |  
                    \ ' / | \__. | | || \__/  |   _| |  \ \_| \__., |  \__/ || \__. | | |     | | | |  
                     \_/   '.__.' [___]'.__.;__] |____| |___|'.__.'[__;.__.'  '.__.' [___]   [___||__] 
            ]];
        [6] =
            [[
            `7MMF'   `7MF'       db      `7MM      `7MM"""Mq.         *MM                                     
              `MA     ,V                   MM        MM   `MM.         MM                                     
               VM:   ,V ,pW"Wq.`7MM   ,M""bMM        MM   ,M9  .gP"Ya  MM,dMMb.   ,pW"Wq.`7Mb,od8 `7MMpMMMb.  
                MM.  M'6W'   `Wb MM ,AP    MM        MMmmdM9  ,M'   Yb MM    `Mb 6W'   `Wb MM' "'   MM    MM  
                `MM A' 8M     M8 MM 8MI    MM        MM  YM.  8M"""""" MM     M8 8M     M8 MM       MM    MM  
                 :MM;  YA.   ,A9 MM `Mb    MM        MM   `Mb.YM.    , MM.   ,M9 YA.   ,A9 MM       MM    MM  
                  VF    `Ybmd9'.JMML.`Wbmd"MML.    .JMML. .JMM.`Mbmmd' P^YbmdP'   `Ybmd9'.JMML.   .JMML  JMML.
            ]];
        [7] =
            [[
                _  _            __       _         ___                 _                                  
                FJ  L]   ____    LJ    ___FJ       F _ ",     ____     FJ___      ____     _ ___   _ ___   
               J |  | L F __ J        F __  L     J `-'(|    F __ J   J  __ J    F __ J   J '__ ",J '__ J  
               J J  F L| |--| |  FJ  | |--| |     |  _  L   | _____J  | |--| |  | |--| |  | |__|-J| |__| | 
               J\ \/ /FF L__J J J  L F L__J J     F |_\  L  F L___--. F L__J J  F L__J J  F L  `-'F L  J J 
                \\__//J\______/FJ__LJ\____,__L   J__| \\__LJ\______/FJ__,____/LJ\______/FJ__L    J__L  J__L
                 \__/  J______F |__| J____,__F   |__|  J__| J______F J__,____F  J______F |__L    |__L  J__|
            ]];
        [8] =
            [[
                __     __    _     _   ____      _                      
                \ \   / /__ (_) __| | |  _ \ ___| |__   ___  _ __ _ __  
                 \ \ / / _ \| |/ _` | | |_) / _ \ '_ \ / _ \| '__| '_ \ 
                  \ V / (_) | | (_| | |  _ <  __/ |_) | (_) | |  | | | |
                   \_/ \___/|_|\__,_| |_| \_\___|_.__/ \___/|_|  |_| |_|
            ]];
        [9] =
            [[
                ,ggg,         ,gg                                  ,ggggggggggg,                                                              
                dP""Y8a       ,8P                           8I     dP"""88""""""Y8,           ,dPYb,                                           
                Yb, `88       d8'                           8I     Yb,  88      `8b           IP'`Yb                                           
                 `"  88       88               gg           8I      `"  88      ,8P           I8  8I                                           
                     88       88               ""           8I          88aaaad8P"            I8  8'                                           
                     I8       8I   ,ggggg,     gg     ,gggg,8I          88""""Yb,     ,ggg,   I8 dP         ,ggggg,     ,gggggg,   ,ggg,,ggg,  
                     `8,     ,8'  dP"  "Y8ggg  88    dP"  "Y8I          88     "8b   i8" "8i  I8dP   88gg  dP"  "Y8ggg  dP""""8I  ,8" "8P" "8, 
                      Y8,   ,8P  i8'    ,8I    88   i8'    ,8I          88      `8i  I8, ,8I  I8P    8I   i8'    ,8I   ,8'    8I  I8   8I   8I 
                       Yb,_,dP  ,d8,   ,d8'  _,88,_,d8,   ,d8b,         88       Yb, `YbadP' ,d8b,  ,8I  ,d8,   ,d8'  ,dP     Y8,,dP   8I   Yb,
                        "Y8P"   P"Y8888P"    8P""Y8P"Y8888P"`Y8         88        Y8888P"Y8888P'"Y88P"'  P"Y8888P"    8P      `Y88P'   8I   `Y8
            ]];
        [10] =
            [[
                oooooo     oooo            o8o        .o8       ooooooooo.              .o8                                      
                `888.     .8'             `"'       "888       `888   `Y88.           "888                                      
                 `888.   .8'    .ooooo.  oooo   .oooo888        888   .d88'  .ooooo.   888oooo.   .ooooo.  oooo d8b ooo. .oo.   
                  `888. .8'    d88' `88b `888  d88' `888        888ooo88P'  d88' `88b  d88' `88b d88' `88b `888""8P `888P"Y88b  
                   `888.8'     888   888  888  888   888        888`88b.    888ooo888  888   888 888   888  888      888   888  
                    `888'      888   888  888  888   888        888  `88b.  888    .o  888   888 888   888  888      888   888  
                     `8'       `Y8bod8P' o888o `Y8bod88P"      o888o  o888o `Y8bod8P'  `Y8bod8P' `Y8bod8P' d888b    o888o o888o 
            ]];
        [11] =
            [[
                                                                                                                          
            8b           d8            88           88     88888888ba              88                                                 
            `8b         d8'            ""           88     88      "8b             88                                                 
             `8b       d8'                          88     88      ,8P             88                                                 
              `8b     d8'  ,adPPYba,   88   ,adPPYb,88     88aaaaaa8P'  ,adPPYba,  88,dPPYba,    ,adPPYba,   8b,dPPYba,  8b,dPPYba,   
               `8b   d8'  a8"     "8a  88  a8"    `Y88     88""""88'   a8P_____88  88P'    "8a  a8"     "8a  88P'   "Y8  88P'   `"8a  
                `8b d8'   8b       d8  88  8b       88     88    `8b   8PP"""""""  88       d8  8b       d8  88          88       88  
                 `888'    "8a,   ,a8"  88  "8a,   ,d88     88     `8b  "8b,   ,aa  88b,   ,a8"  "8a,   ,a8"  88          88       88  
                  `8'      `"YbbdP"'   88   `"8bbdP"Y8     88      `8b  `"Ybbd8"'  8Y"Ybbd8"'    `"YbbdP"'   88          88       88  
            ]];
        [12] =
            [[
                d8,      d8b                      d8b                                 
                `8P       88P                      ?88                                 
                         d88                        88b                                
?88   d8P d8888b   88b d888888        88bd88b d8888b  888888b  d8888b   88bd88b  88bd88b 
d88  d8P'd8P' ?88  88Pd8P' ?88        88P'  `d8b_,dP  88P `?8bd8P' ?88  88P'  `  88P' ?8b
?8b ,88' 88b  d88 d88 88b  ,88b      d88     88b     d88,  d8888b  d88 d88      d88   88P
`?888P'  `?8888P'd88' `?88P'`88b    d88'     `?888P'd88'`?88P'`?8888P'd88'     d88'   88b
            ]];
        [13] =
            [[
                .##.....##..#######..####.########.....########..########.########...#######..########..##....##
                .##.....##.##.....##..##..##.....##....##.....##.##.......##.....##.##.....##.##.....##.###...##
                .##.....##.##.....##..##..##.....##....##.....##.##.......##.....##.##.....##.##.....##.####..##
                .##.....##.##.....##..##..##.....##....########..######...########..##.....##.########..##.##.##
                ..##...##..##.....##..##..##.....##....##...##...##.......##.....##.##.....##.##...##...##..####
                ...##.##...##.....##..##..##.....##....##....##..##.......##.....##.##.....##.##....##..##...###
                ....###.....#######..####.########.....##.....##.########.########...#######..##.....##.##....##
            ]];
        [14] =
            [[
                db    db  .d88b.  d888888b d8888b.      d8888b. d88888b d8888b.  .d88b.  d8888b. d8b   db 
                88    88 .8P  Y8.   `88'   88  `8D      88  `8D 88'     88  `8D .8P  Y8. 88  `8D 888o  88 
                Y8    8P 88    88    88    88   88      88oobY' 88ooooo 88oooY' 88    88 88oobY' 88V8o 88 
                `8b  d8' 88    88    88    88   88      88`8b   88~~~~~ 88~~~b. 88    88 88`8b   88 V8o88 
                 `8bd8'  `8b  d8'   .88.   88  .8D      88 `88. 88.     88   8D `8b  d8' 88 `88. 88  V888 
                   YP     `Y88P'  Y888888P Y8888D'      88   YD Y88888P Y8888P'  `Y88P'  88   YD VP   V8P 
            ]];
        [15] =
            [[
                V     V           d     RRRR      b                 
                V     V     ii    d     R   R     b                 
                 V   V  ooo     ddd     RRRR  eee bbb  ooo rrr nnn  
                  V V   o o ii d  d     R R   e e b  b o o r   n  n 
                   V    ooo ii  ddd     R  RR ee  bbb  ooo r   n  n 
            ]];
        [16] =
            [[
                :::     :::  :::::::: ::::::::::: :::::::::          :::::::::  :::::::::: :::::::::   ::::::::  :::::::::  ::::    ::: 
                :+:     :+: :+:    :+:    :+:     :+:    :+:         :+:    :+: :+:        :+:    :+: :+:    :+: :+:    :+: :+:+:   :+:  
               +:+     +:+ +:+    +:+    +:+     +:+    +:+         +:+    +:+ +:+        +:+    +:+ +:+    +:+ +:+    +:+ :+:+:+  +:+   
              +#+     +:+ +#+    +:+    +#+     +#+    +:+         +#++:++#:  +#++:++#   +#++:++#+  +#+    +:+ +#++:++#:  +#+ +:+ +#+    
              +#+   +#+  +#+    +#+    +#+     +#+    +#+         +#+    +#+ +#+        +#+    +#+ +#+    +#+ +#+    +#+ +#+  +#+#+#     
              #+#+#+#   #+#    #+#    #+#     #+#    #+#         #+#    #+# #+#        #+#    #+# #+#    #+# #+#    #+# #+#   #+#+#      
               ###      ######## ########### #########          ###    ### ########## #########   ########  ###    ### ###    ####       
            ]];
        [17] =
            [[
                d    b   sSSSs   d d ss         d ss.  d sss   d ss.    sSSSs   d ss.  d s  b 
                S    S  S     S  S S   ~o       S    b S       S    b  S     S  S    b S  S S 
                S    S S       S S S     b      S    P S       S    P S       S S    P S   SS 
                S    S S       S S S     S      S sS'  S sSSs  S sSS' S       S S sS'  S    S 
                S    S S       S S S     P      S   S  S       S    b S       S S   S  S    S 
                 S   S  S     S  S S    S       S    S S       S    P  S     S  S    S S    S 
                  "ssS   "sss"   P P ss"        P    P P sSSss P `SS    "sss"   P    P P    P 
            ]];
        [18] =
            [[
                ______                                    ____         ____         ______                               
                `.           .'  .~      ~.  | |``````.         |`````````, |            |    ~.     .~      ~.  |`````````, |..          | 
                  `.       .'   |          | | |       |        |'''|'''''  |______      |____.'_   |          | |'''|'''''  |  ``..      | 
                    `.   .'     |          | | |       |        |    `.     |            |       ~. |          | |    `.     |      ``..  | 
                      `.'        `.______.'  | |......'         |      `.   |___________ |_______.'  `.______.'  |      `.   |          ``| 
            ]];
        [19] =
            [[
                ________  ________   ________   _______       _______  ________  ________  ________  ________  ________ 
                /    /   \/        \ /        \_/       \    //       \/        \/       / /        \/        \/    /   \
               /         /         /_/       //         /   //        /         /        \/         /         /         /
               \        /         //         /         /   /        _/        _/         /         /        _/         / 
                \\_____/\________/ \________/\________/    \____/___/\________/\________/\________/\____/___/\__/_____/  
            ]];
        [20] =
            [[
                /$$    /$$          /$$       /$$       /$$$$$$$            /$$                                    
                | $$   | $$         |__/      | $$      | $$__  $$          | $$                                    
                | $$   | $$ /$$$$$$  /$$  /$$$$$$$      | $$  \ $$  /$$$$$$ | $$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$ 
                |  $$ / $$//$$__  $$| $$ /$$__  $$      | $$$$$$$/ /$$__  $$| $$__  $$ /$$__  $$ /$$__  $$| $$__  $$
                 \  $$ $$/| $$  \ $$| $$| $$  | $$      | $$__  $$| $$$$$$$$| $$  \ $$| $$  \ $$| $$  \__/| $$  \ $$
                  \  $$$/ | $$  | $$| $$| $$  | $$      | $$  \ $$| $$_____/| $$  | $$| $$  | $$| $$      | $$  | $$
                   \  $/  |  $$$$$$/| $$|  $$$$$$$      | $$  | $$|  $$$$$$$| $$$$$$$/|  $$$$$$/| $$      | $$  | $$
                    \_/    \______/ |__/ \_______/      |__/  |__/ \_______/|_______/  \______/ |__/      |__/  |__/
            ]];
        [21] =
            [[
                $$\    $$\           $$\       $$\       $$$$$$$\            $$\                                     
                $$ |   $$ |          \__|      $$ |      $$  __$$\           $$ |                                    
                $$ |   $$ | $$$$$$\  $$\  $$$$$$$ |      $$ |  $$ | $$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\  
                \$$\  $$  |$$  __$$\ $$ |$$  __$$ |      $$$$$$$  |$$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ 
                 \$$\$$  / $$ /  $$ |$$ |$$ /  $$ |      $$  __$$< $$$$$$$$ |$$ |  $$ |$$ /  $$ |$$ |  \__|$$ |  $$ |
                  \$$$  /  $$ |  $$ |$$ |$$ |  $$ |      $$ |  $$ |$$   ____|$$ |  $$ |$$ |  $$ |$$ |      $$ |  $$ |
                   \$  /   \$$$$$$  |$$ |\$$$$$$$ |      $$ |  $$ |\$$$$$$$\ $$$$$$$  |\$$$$$$  |$$ |      $$ |  $$ |
                    \_/     \______/ \__| \_______|      \__|  \__| \_______|\_______/  \______/ \__|      \__|  \__|
            ]];
        [22] =
            [[
                __     __            __        __        _______             __                                     
                |  \   |  \          |  \      |  \      |       \           |  \                                    
                | $$   | $$  ______   \$$  ____| $$      | $$$$$$$\  ______  | $$____    ______    ______   _______  
                | $$   | $$ /      \ |  \ /      $$      | $$__| $$ /      \ | $$    \  /      \  /      \ |       \ 
                 \$$\ /  $$|  $$$$$$\| $$|  $$$$$$$      | $$    $$|  $$$$$$\| $$$$$$$\|  $$$$$$\|  $$$$$$\| $$$$$$$\
                  \$$\  $$ | $$  | $$| $$| $$  | $$      | $$$$$$$\| $$    $$| $$  | $$| $$  | $$| $$   \$$| $$  | $$
                   \$$ $$  | $$__/ $$| $$| $$__| $$      | $$  | $$| $$$$$$$$| $$__/ $$| $$__/ $$| $$      | $$  | $$
                    \$$$    \$$    $$| $$ \$$    $$      | $$  | $$ \$$     \| $$    $$ \$$    $$| $$      | $$  | $$
                     \$      \$$$$$$  \$$  \$$$$$$$       \$$   \$$  \$$$$$$$ \$$$$$$$   \$$$$$$  \$$       \$$   \$$
            ]];
        [23] =
            [[
                __     __           __        __        _______             __                                     
                /  |   /  |         /  |      /  |      /       \           /  |                                    
                $$ |   $$ | ______  $$/   ____$$ |      $$$$$$$  |  ______  $$ |____    ______    ______   _______  
                $$ |   $$ |/      \ /  | /    $$ |      $$ |__$$ | /      \ $$      \  /      \  /      \ /       \ 
                $$  \ /$$//$$$$$$  |$$ |/$$$$$$$ |      $$    $$< /$$$$$$  |$$$$$$$  |/$$$$$$  |/$$$$$$  |$$$$$$$  |
                 $$  /$$/ $$ |  $$ |$$ |$$ |  $$ |      $$$$$$$  |$$    $$ |$$ |  $$ |$$ |  $$ |$$ |  $$/ $$ |  $$ |
                  $$ $$/  $$ \__$$ |$$ |$$ \__$$ |      $$ |  $$ |$$$$$$$$/ $$ |__$$ |$$ \__$$ |$$ |      $$ |  $$ |
                   $$$/   $$    $$/ $$ |$$    $$ |      $$ |  $$ |$$       |$$    $$/ $$    $$/ $$ |      $$ |  $$ |
                    $/     $$$$$$/  $$/  $$$$$$$/       $$/   $$/  $$$$$$$/ $$$$$$$/   $$$$$$/  $$/       $$/   $$/ 
            ]];
        [24] =
            [[
                ,-.-.   _,.---._     .=-.-.                                   ,----.               _,.---._                .-._         
                ,--.-./=/ ,/ ,-.' , -  `.  /==/_ /_,..---._           .-.,.---.   ,-.--` , \   _..---.  ,-.' , -  `.   .-.,.---. /==/ \  .-._  
               /==/, ||=| -|/==/_,  ,  - \|==|, /==/,   -  \         /==/  `   \ |==|-  _.-` .' .'.-. \/==/_,  ,  - \ /==/  `   \|==|, \/ /, / 
               \==\,  \ / ,|==|   .=.     |==|  |==|   _   _\       |==|-, .=., ||==|   `.-./==/- '=' /==|   .=.     |==|-, .=., |==|-  \|  |  
                \==\ - ' - /==|_ : ;=:  - |==|- |==|  .=.   |       |==|   '='  /==/_ ,    /|==|-,   '|==|_ : ;=:  - |==|   '='  /==| ,  | -|  
                 \==\ ,   ||==| , '='     |==| ,|==|,|   | -|       |==|- ,   .'|==|    .-' |==|  .=. \==| , '='     |==|- ,   .'|==| -   _ |  
                 |==| -  ,/ \==\ -    ,_ /|==|- |==|  '='   /       |==|_  . ,'.|==|_  ,`-._/==/- '=' ,\==\ -    ,_ /|==|_  . ,'.|==|  /\ , |  
                 \==\  _ /   '.='. -   .' /==/. /==|-,   _`/        /==/  /\ ,  )==/ ,     /==|   -   / '.='. -   .' /==/  /\ ,  )==/, | |- |  
                  `--`--'      `--`--''   `--`-``-.`.____.'         `--`-`--`--'`--`-----```-._`.___,'    `--`--''   `--`-`--`--'`--`./  `--`  
            ]];
    };
    Memory = 400; -- Current memory for memory spoofer
};
function VOID_CONSTRUCTORS:Panic(self) 
    for index, pair in next, VOID_CONSTRUCTORS.Connections do 
        if type(pair) == 'table' then 
            table.foreach(pair, function(idx, connection)
                pcall(LPH_NO_VIRTUALIZE(function()
                    connection:Disconnect();
                end));
            end);
        end;
    end;
    for index, corthread in next, VOID_CONSTRUCTORS.Coroutines do
        pcall(coroutine.yield, corthread);
    end;
    pcall(LPH_NO_VIRTUALIZE(function() 
        Drawing.clear();
    end));
    for index, asset in next, VOID_CONSTRUCTORS.Assets do 
        pcall(LPH_NO_VIRTUALIZE(function() 
            asset:Remove();
        end));
    end; -- Drawing assets
    getgenv().Void = nil;
    for i = 1, 2 do
        if pcall ~= nil then pcall(setfenv, i, {}); end;
    end;
    -------------------------------------------
end;
-------------------------------------------
if (getgenv().Void.Misc.BypassAC == true) then
    -- Adonis AC
    -- Index & Namecall
    for idx, key in next, getgc(true) do 
        if pcall(function() return rawget(key, 'indexInstance') end) and typeof(rawget(key, 'indexInstance')) == 'table' and (rawget(key, 'indexInstance'))[1] == 'kick' then
            key.tvk = {
                'kick';
                function() 
                    return game.Workspace:WaitForChild('');
                end; -- Makes it yield forever and hook the function that's supposed to kick you :D (shit anticheat)
            };
        end;
        if pcall(function() return rawget(key, 'namecallInstance') end) and typeof(rawget(key, 'namecallInstance')) == 'table' and (rawget(key, 'namecallInstance'))[1] == 'kick' then
            key.tvk = {
                'kick';
                function() 
                    return game.Workspace:WaitForChild('');
                end; -- Makes it yield forever and hook the function that's supposed to kick you :D (shit anticheat)
            };
        end;
    end;
    -- Regular AC
    -- later in the script when the index hook will also be made --
end;
-------------------------------------------
-- Service variables
local workspace = workspace or Workspace or game:GetService('Workspace') or game:GetService('workspace') or game.Workspace;
local Players = game:GetService('Players') or game.Players;
local RunService = game:GetService('RunService') or game['Run Service'];
local UserInputService = game:GetService('UserInputService');
local MarketplaceService = game:GetService('MarketplaceService') or game['MarketplaceService'];
local GroupService = game:GetService('GroupService') or game['GroupService'];
local StarterGui = game:GetService('StarterGui') or game['StarterGui'];
local CoreGui = game:GetService('CoreGui') or game['CoreGui'];
local CorePackages = game:GetService('CorePackages')
local ScriptContext = game:GetService('ScriptContext');
local TweenService = game:GetService('TweenService');
local Stats = game:GetService('Stats');
local VirtualInputManager = game:GetService('VirtualInputManager');
local TeleportService = game:GetService('TeleportService');
local ReplicatedStorage = game:GetService('ReplicatedStorage') or game.ReplicatedStorage;
local Lighting = game.Lighting;
local HttpService = game:GetService('HttpService');
local RbxAnalyticsService = game:GetService('RbxAnalyticsService');
-------------------------------------------
-- Other variables
local isGroupGame = LPH_NO_VIRTUALIZE(function() 
    return MarketplaceService:GetProductInfo(game.PlaceId).Creator.CreatorType == 'Group';
end)();
if (isGroupGame == true) then 
    local groupID = GroupService:GetGroupInfoAsync(MarketplaceService:GetProductInfo(game.PlaceId).Creator.CreatorTargetId).Id;
elseif (isGroupGame == false or isGroupGame == nil) then
    local creatorID = game.CreatorId;
end;
-------------------------------------------
-- Function variables
-------------------------------------------
-- Notification function --
local sendNotification = LPH_NO_VIRTUALIZE(function(title, desc, duration) 
    StarterGui:SetCore('SendNotification', {
        Title = title;
        Text = desc or 'void - test notif';
        Duration = duration or 2;
    });
end);
-------------------------------------------
-- Protect Gui --
local protectGui = LPH_NO_VIRTUALIZE(function(GUI) 
    if syn then
        syn.protect_gui(GUI);
    elseif gethui then
        GUI.Parent = CoreGui;
        GUI.Parent = gethui();
    else
        GUI.Parent = CoreGui;
    end
end);
-------------------------------------------
-- Table Dump --
-- thanks to @0x59 on github --
-- https://github.com/op0x59/TableDumper --
local tableDump = LPH_NO_VIRTUALIZE(function(t) 
    local writer = {}
    writer.__index = writer
    
    function writer.new()
        local self = setmetatable({}, writer)
        self.indent = 0
        self.text = ''
        return self
    end
    
    function writer:writeIndentation()
        for i = 1, self.indent do
            self.text = self.text .. "\t"
        end
    end
    
    function writer:write(text)
        self.text = self.text .. text
    end
    
    function writer:writeLine(text)
        self.text = self.text .. text .. "\n"
    end
    
    function writer:writeIndent(text)
        self:writeIndentation()
        self:write(text)
    end
    
    function writer:writeLineIndent(text)
        self:writeIndentation()
        self:writeLine(text)
    end
    
    function writer:incIndent()
        self.indent = self.indent + 1
    end
    
    function writer:unindent()
        self.indent = self.indent - 1
    end
    
    function writer:toString() return self.text end
    function writer:clear() self.text = '' self.indent = 0 end
    
    -- WRITER --


    -- TABLE DUMPER --
    local td = {}
    td.__index = td
    
    function td.new(tab)
        local self = setmetatable({}, td)
        self.writer = writer.new()
        self.ot = tab
        self.memory = {}
        self.visitedTables = {}
        return self
    end
    
    function td:cacheGlobalMemory()
        local currentTrack = {'_G'}
        local function internalCount(t) local c = 0 for _,__ in pairs(t) do c = c + 1 end return c end
        
        local function createNamespace()
            local namespace = ''
            for key, value in pairs(currentTrack) do
                if value ~= '_G' and value ~= 'package' then 
                    namespace = namespace .. value .. '.'
                end
            end
            return namespace
        end
    
        local function internalCache(t)
            local len = internalCount(t)
            local curr = 0
            for key, value in pairs(t) do
                curr = curr + 1
                if type(value) == 'function' or type(value) == 'table' then
                    if type(value) == 'table' and self.visitedTables[value] == nil then
                        self.visitedTables[value] = key
                        currentTrack[#currentTrack+1] = key
                        internalCache(value)
                    end
                    self.memory[value] = createNamespace() .. key
                end
                if curr == len then
                    table.remove(currentTrack, #currentTrack)
                end
            end
        end
    
        internalCache(_G)
    end
    
    function td:resolve()
        self:cacheGlobalMemory()
        
        local internalResolve
        local function internalResolveSpecial(value)
            if value == _G then return '_G' end
            if self.memory[value] then return self.memory[value] end
            if type(value) == 'table' then 
                if self.visitedTables[value] ~= nil then 
                    if self.visitedTables[value] == true then return "{...}" end
                    return self.visitedTables
                end
                internalResolve(value)
                return ''
            end
            return tostring(value)
        end
    
        local function internalResolveValue(value) 
            if type(value) == 'function' or type(value) == 'table' then 
                return internalResolveSpecial(value) 
            elseif type(value) == 'string' then
                return '[[' .. tostring(value) .. ']]'
            elseif type(value) == 'number' and value == math.huge then
                return "math.huge"
            elseif type(value) == 'number' and value == math.pi then
                return "math.pi"
            else
                return tostring(value)
            end 
        end
    
        local function internalCount(t) local c = 0 for _,__ in pairs(t) do c = c + 1 end return c end
    
        internalResolve = function(t, key)
            local len = internalCount(t)
            local curr = 0
            if len ~= 0 then self.writer:writeLine("{") else self.writer:write("{") end
            self.writer:incIndent()
            self.visitedTables[t] = true
            if key then
                self.visitedTables[t] = key
            end
            for key, value in pairs(t) do
                curr = curr + 1
                if type(key) == 'string' then
                    if string.find(key, ' ') then
                        self.writer:writeIndent('["' .. key .. '"] = ')
                    else
                        self.writer:writeIndent(key .. ' = ')
                    end
                    self.writer:write(internalResolveValue(value))
                elseif type(key) == 'number' then
                    self.writer:writeIndent('[' .. tostring(key) .. '] = ')
                    self.writer:write(internalResolveValue(value))
                elseif type(key) == 'table' then
                    self.writer:writeIndent('[')
                    internalResolve(key)
                    self.writer:write('] = ')
                    self.writer:write(internalResolveValue(value))
                elseif type(key) == 'function' then
                    self.writer:writeIndent('[' .. internalResolveValue(key) .. '] = ')
                    self.writer:write(internalResolveValue(value))
                else
                    self.writer:writeIndent('[' .. internalResolveValue(key) .. '] = ')
                    self.writer:write(internalResolveValue(value))
                end
                if curr == len then self.writer:writeLine('') else self.writer:writeLine(',') end
            end
            self.writer:unindent()
            if len ~= 0 then self.writer:writeIndent("}") else self.writer:write("}") end
        end
        internalResolve(self.ot)
    end
    
    function td:toString()
        self:resolve()
        return self.writer:toString()
    end
    
    return td.new(t):toString();
end);

-------------------------------------------
-- Settings Handler --
if (getgenv().Void.Misc.Settings.Legit.NoBulletDelay == true) then 
    pcall(LPH_NO_VIRTUALIZE(function() 
        CorePackages.Packages:Destroy();
    end));
end;
if (getgenv().Void.Misc.Settings.Blatant.AntiMacroFling == true) then 
    if (Players.LocalPlayer ~= nil and Players.LocalPlayer.Character ~= nil and Players.LocalPlayer.Character.PrimaryPart ~= nil) then
        table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function() 
            pcall(LPH_NO_VIRTUALIZE(function() 
                local OldVelocity = Players.LocalPlayer.Character.PrimaryPart.Velocity;
                -------------------------------------------
                Players.LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0);
                -------------------------------------------
                RunService.RenderStepped:Wait();
                -------------------------------------------
                Players.LocalPlayer.Character.PrimaryPart.Velocity = OldVelocity;
            end));
        end)));
        
    end;
end;
if (getgenv().Void.Misc.Settings.Legit.LowGFX == true) then 
    coroutine.wrap(LPH_NO_VIRTUALIZE(function()
        for idx, instance in ipairs(workspace:GetDescendants()) do 
            if instance:IsA('BasePart') or instance:IsA('Part') or instance:IsA('SpawnLocation') or instance:IsA('WedgePart') or instance:IsA('Terrain') or instance:IsA('MeshPart') or instance:IsA('Union') or instance:IsA('TrussPart') or instance:IsA('CornerWedgePart') then 
                instance.Material = Enum.Material.SmoothPlastic;
            end;
            if instance:IsA('Texture') or instance:IsA('Decal') then 
                instance:Destroy();
            end;
            if instance:IsA('Trail') or instance:IsA('ParticleEmitter') then 
                instance.Lifetime = NumberRange.new(0);
            end;
            if instance:IsA('Explosion') then 
                instance.BlastPressure = 0.5;
                instance.BlastRadius = 0.5;
            end;
            if instance:IsA('Spotlight') or instance:IsA('Sparkles') or instance:IsA('Smoke') or instance:IsA('Fire') then
                instance.Enabled = false;
            end;
            task.wait(); -- Reduce hard lag on startup if low gfx is enabled
        end;
        for idx, instance in ipairs(Lighting:GetChildren()) do 
            if instance:IsA('SunRaysEffect') or instance:IsA('ColorCorrectionEffect') or instance:IsA('BloomEffect') then 
                instance.Enabled = false;
            end;
        end;
        -- Terrain --
        workspace.Terrain.WaterWaveSize = 0;
        workspace.Terrain.WaterWaveSpeed = 0;
        workspace.Terrain.WaterReflectance = 0;
        workspace.Terrain.Brightness = 0;
        workspace.Terrain.WaterTransparency = 0;
        workspace.Terrain.GlobalShadows = false;
        workspace.Terrain.FogEnd = 9e9;
        pcall(LPH_NO_VIRTUALIZE(function()
            sethiddenproperty(Lighting, 'Technology', Enum.Technology.Compatibility);
        end));
        -- Misc --
        settings().Rendering.QualityLevel = 'Level01'; -- Set to lowest
    end))();
end;
-------------------------------------------
-------------------------------------------
-- Misc Functions --
-------------------------------------------
-- Advanced Pred Func --
local AdvancedPred = LPH_NO_VIRTUALIZE(function(Ping, Range) 
    local cache_prediction = 0;
    if string.lower(tostring(Range)) == 'far' then 
        cache_prediction += 0.1 + (Ping / 1250) * 1.05 + ((Ping / 1000) * (Ping / 1500) * 1.040);
    elseif string.lower(tostring(Range)) == 'mid' then
        cache_prediction += 0.1 + (Ping / 2000) + ((Ping / 1000) * (Ping / 1500) * 1.025);
    elseif string.lower(tostring(Range)) == 'close' then
        cache_prediction += 0.1 + (Ping / 2500) * 0.95 + ((Ping / 1000) * (Ping / 1500) * 0.95);
    end
    return cache_prediction;
end);
-------------------------------------------
-- Intro Loader --
local LoadIntro = LPH_NO_VIRTUALIZE(function(Type) 
    if tostring(Type):lower() == 'game' then 
        coroutine.wrap(LPH_NO_VIRTUALIZE(function()
            VOID_CONSTRUCTORS.GameAssets.Intro = {
                Blur = Instance.new('BlurEffect', Lighting);
                GUI = Instance.new('ScreenGui', CoreGui);
            };
            -------------------------------------------
            local Start = tick();
            coroutine.wrap(function()
                while (true) and (getgenv().Void) do 
                    local ElapsedTime = tick() - Start;
                    -- Shake
                    workspace.CurrentCamera.CFrame += Vector3.new(
                        -- X Axis
                        math.random(-1, 1) * 1.15,
                        -- Y Axis
                        math.random(-1, 1) * 1.35,
                        -- Z Axis
                        math.random(-1, 1) * 1.2
                    );
                    -- Tilt
                    local Angle = math.sin(ElapsedTime * 5) * 5;
                    workspace.CurrentCamera.CFrame *= CFrame.Angles(0, 0, math.rad(Angle) * 1.5);
                    if (ElapsedTime >= 3) then
                        break;
                    end;
                    wait();
                end;
            end))();
            -------------------------------------------
            VOID_CONSTRUCTORS.GameAssets.Intro.Blur.Size = 0;
            protectGui(VOID_CONSTRUCTORS.GameAssets.Intro.GUI);
            task.wait(.5);
            TweenService:Create(VOID_CONSTRUCTORS.GameAssets.Intro.Blur, TweenInfo.new(1), {Size = 20}):Play();
            -------------------------------------------
            -- Image --
            VOID_CONSTRUCTORS.GameAssets.Intro.Image = Instance.new('ImageLabel', VOID_CONSTRUCTORS.GameAssets.Intro.GUI);
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.AnchorPoint = Vector2.new(0.5, 0.5);
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.Position = UDim2.new(0.5, 0, 1, 0);
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.Size = UDim2.new(0, 512, 0, 256);
            if (getgenv().Void.Misc.Intro.Logo == 1) then 
                VOID_CONSTRUCTORS.GameAssets.Intro.Image.Image = VOID_CONSTRUCTORS.GameAssets.Logo; 
            else 
                VOID_CONSTRUCTORS.GameAssets.Intro.Image.Image = VOID_CONSTRUCTORS.GameAssets.Logo2;
            end;
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.ImageTransparency = 1;
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.BorderSizePixel = 0;
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.BackgroundTransparency = 1;
            VOID_CONSTRUCTORS.GameAssets.Intro.Image.Visible = true;
            task.wait(.5);
            -------------------------------------------
            -- Tweening --
            -------------------------------------------
            TweenService:Create(VOID_CONSTRUCTORS.GameAssets.Intro.Image, TweenInfo.new(1), {
                ImageTransparency = 0;
                Position = UDim2.new(0.5, 0, 0.5, 0);
            }):Play();
            task.wait(math.random(1, 2));
            TweenService:Create(VOID_CONSTRUCTORS.GameAssets.Intro.Blur, TweenInfo.new(1.8), {Size = 0}):Play();
            TweenService:Create(VOID_CONSTRUCTORS.GameAssets.Intro.Image, TweenInfo.new(1.45), {
                ImageTransparency = 1;
                Position = UDim2.new(0.5, 0, 0.15, 0);
            }):Play();
            task.wait(1.45);
            VOID_CONSTRUCTORS.GameAssets.Intro.Image:Destroy();
            VOID_CONSTRUCTORS.GameAssets.Intro.Blur:Destroy();
        end)();
    elseif tostring(Type):lower() == 'console' or tostring(Type):lower() == 'rconsole' then
        pcall(function()
            rconsolename(string.format('[Void] | %s', RbxAnalyticsService:GetClientId()));
            rconsoleprint('@@LIGHT_BLUE@@');
            rconsoleprint(VOID_CONSTRUCTORS.WatermarkAssets[getgenv().Void.Misc.Intro.Logo] or VOID_CONSTRUCTORS.WatermarkAssets[11]);
            rconsoleprint('\n');
            rconsoleprint('[beta] - void is ready to be executed, press [enter] to load');
            local keyboard_input = rconsoleinput();
            -- the rconsoleinput will yield the other code so ima let it yield it normally so it actually can load in real time as you press enter
            if (keyboard_input == '\13') then 
                rconsoleclear();
            end;
            task.wait(1);
            rconsoleprint('[beta] - void data below');
            rconsoleprint('\n');
            rconsoleprint(tableDump(getgenv().Void));
        end);
    end;
end);
if (getgenv().Void.Misc.Intro.Enabled == true) then 
    LoadIntro(getgenv().Void.Misc.Intro.Type);
end;
-------------------------------------------
-- Base64 encoder & decoder --
-- https://stackoverflow.com/questions/34618946/lua-base64-encode
local base64_encode = base64_encode or base64 and base64.encode or crypt and crypt.base64_encode or crypt and crypt.base64 and crypt.base64.encode or syn and syn.crypt and syn.crypt.base64_encode or function(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end;
local base64_decode = base64_decode or base64 and base64.decode or crypt and crypt.base64_decode or crypt and crypt.base64 and crypt.base64.encode or syn and syn.crypt and syn.crypt.base64_decode or function(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end;
-------------------------------------------
-------------------------------------------
-- Compare 2D Pos and return their magnitude --
local CompareDis = function(pA, pB) 
    return (pA - pB).Magnitude;
end;
-------------------------------------------
-- Wall check (check if behind a wall) --
local BehindWall = function(char)
    if not char then return false; end;
    local pos = char.PrimaryPart.Position;
    -------------------------------------------
    local raycast_params = RaycastParams.new();
    raycast_params.FilterType = Enum.RaycastFilterType.Blacklist;
    raycast_params.FilterDescendantsInstances = {char, workspace.CurrentCamera};
    
    local result = workspace:Raycast(workspace.CurrentCamera.CFrame.Position, pos - workspace.CurrentCamera.CFrame.Position, raycast_params);
    return result ~= nil
end;
-------------------------------------------
-- If on screen check --
local IsOnScreen = function(char)
    local pos = workspace.CurrentCamera:WorldToScreenPoint(char.PrimaryPart.Position)
    return pos.Z > 0 and pos.X > 0 and pos.X < workspace.CurrentCamera.ViewportSize.X and pos.Y > 0 and pos.Y < workspace.CurrentCamera.ViewportSize.Y
end;
-------------------------------------------
-------------------------------------------
-- Hit Chance Generator --
local HitChanceGen = function(percentage, intensity) 
	local chance = (math.random() + Random.new().NextNumber(Random.new(), 0, 1)) / intensity; -- since math.random doesn't work from 0 to 1
	return (chance <= (math.floor(percentage) / 100) )
end;

-------------------------------------------
-- Get Nearest Functions
-------------------------------------------
local GetNearestPlayer = function(t) 
    if tostring(t):lower() == 'silent' then
        local mouse_pos = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y);
        ------------------------
        local nearest_plr = nil;
        local nearest_dis = math.huge;

        for i, player in ipairs(Players:GetPlayers()) do
            -- Checks
            if (getgenv().Void.Global.Checks.Character == true) and not (player.Character) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.PrimaryPart == true) and not (player.Character.PrimaryPart) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Teamcheck == true) and (player.Team == Players.LocalPlayer.Team) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Whitelisted == true) and table.find(getgenv().Void.Global.Whitelisted, player.Name) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.Friends == true) and player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Dead == true) and (player.Character:FindFirstChild('BodyEffects') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O').Value == true or false) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Wallcheck == true) and BehindWall(player.Character) == true then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Visible == true) and not IsOnScreen(player.Character) then 
                continue;
            end
            if (getgenv().Void.Global.Checks.Anti == true) and (player.Character.PrimaryPart.Velocity.X >= 35 or player.Character.PrimaryPart.Velocity.Y >= 20 or player.Character.PrimaryPart.Velocity.Z >= 35 or player.Character.PrimaryPart.Velocity.X <= -30 or player.Character.PrimaryPart.Velocity.Y <= -25 or player.Character.PrimaryPart.Velocity.Z <= -30)  then
                continue;
            end;
            if (getgenv().Void.Global.Checks.LocalPlayer == true) and player == Players.LocalPlayer then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Grabbed == true) and (player.Character ~= nil and player.Character:FindFirstChild('GRABBING_CONSTRAINT') or false) then 
                continue;
            end;
            -- Distance calculation
            if (player.Character) and (player.Character and player.Character.PrimaryPart or false) then 
                local part_pos = player.Character.PrimaryPart.Position;
                local on_screen_pos = workspace.CurrentCamera:WorldToViewportPoint(part_pos);

                local dis_on_screen = CompareDis(mouse_pos, Vector2.new(on_screen_pos.X, on_screen_pos.Y));

                if (getgenv().Void.Aiming.Silentbot.FOV.Enabled == true) then 
                    if IsOnScreen(player.Character) and (getgenv().Void.Aiming.Silentbot.FOV.Radius >= dis_on_screen) and (dis_on_screen < nearest_dis) then
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                else
                    if (dis_on_screen < nearest_dis) then 
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                end;
            end;
        end;
        return nearest_plr;
    elseif tostring(t):lower() == 'lock' then
        local mouse_pos = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y);
        ------------------------
        local nearest_plr = nil;
        local nearest_dis = math.huge;

        for i, player in ipairs(Players:GetPlayers()) do
            -- Checks
            if (getgenv().Void.Global.Checks.Character == true) and not (player.Character) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.PrimaryPart == true) and not (player.Character.PrimaryPart) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Teamcheck == true) and (player.Team == Players.LocalPlayer.Team) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Whitelisted == true) and table.find(getgenv().Void.Global.Whitelisted, player.Name) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.Friends == true) and player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Dead == true) and (player.Character:FindFirstChild('BodyEffects') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O').Value == true or false) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Wallcheck == true) and BehindWall(player.Character) == true then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Visible == true) and not IsOnScreen(player.Character) then 
                continue;
            end
            if (getgenv().Void.Global.Checks.Anti == true) and (player.Character.PrimaryPart.Velocity.X >= 35 or player.Character.PrimaryPart.Velocity.Y >= 20 or player.Character.PrimaryPart.Velocity.Z >= 35 or player.Character.PrimaryPart.Velocity.X <= -30 or player.Character.PrimaryPart.Velocity.Y <= -25 or player.Character.PrimaryPart.Velocity.Z <= -30) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.LocalPlayer == true) and player == Players.LocalPlayer then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Grabbed == true) and (player.Character and player.Character:FindFirstChild('GRABBING_CONSTRAINT') or false) then 
                continue;
            end;

            -- Distance calculation
            if (player.Character) and (player.Character and player.Character.PrimaryPart or false) then 
                local part_pos = player.Character.PrimaryPart.Position;
                local on_screen_pos = workspace.CurrentCamera:WorldToScreenPoint(part_pos);

                local dis_on_screen = CompareDis(mouse_pos, Vector2.new(on_screen_pos.X, on_screen_pos.Y));

                if (getgenv().Void.Aiming.Aimbot.FOV.Enabled == true) then 
                    if IsOnScreen(player.Character) and (getgenv().Void.Aiming.Aimbot.FOV.Radius  >= dis_on_screen) and (dis_on_screen < nearest_dis) then
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                else
                    if (dis_on_screen < nearest_dis) then 
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                end;
            end;
        end;
        return nearest_plr;
    elseif tostring(t):lower() == 'triggerbot' then
        local mouse_pos = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y);
        ------------------------
        local nearest_plr = nil;
        local nearest_dis = math.huge;

        for i, player in ipairs(Players:GetPlayers()) do
            -- Checks
            if (getgenv().Void.Global.Checks.Character == true) and not (player.Character) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.PrimaryPart == true) and not (player.Character.PrimaryPart) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Teamcheck == true) and (player.Team == Players.LocalPlayer.Team) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Whitelisted == true) and table.find(getgenv().Void.Global.Whitelisted, player.Name) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.Friends == true) and player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Dead == true) and (player.Character:FindFirstChild('BodyEffects') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O').Value == true or false) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.Wallcheck == true) and BehindWall(player.Character) == true then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Visible == true) and not IsOnScreen(player.Character) then 
                continue;
            end
            if (getgenv().Void.Global.Checks.Anti == true) and (player.Character.PrimaryPart.Velocity.X >= 55 or player.Character.PrimaryPart.Velocity.Y >= 30 or player.Character.PrimaryPart.Velocity.Z >= 45 or player.Character.PrimaryPart.Velocity.X <= -40 or player.Character.PrimaryPart.Velocity.Y <= -30 or player.Character.PrimaryPart.Velocity.Z <= -30) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.LocalPlayer == true) and player == Players.LocalPlayer then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Grabbed == true) and (player.Character ~= nil and player.Character:FindFirstChild('GRABBING_CONSTRAINT') or false) then 
                continue;
            end;

            -- Distance calculation
            if (player.Character) and (player.Character and player.Character.PrimaryPart or false) then 
                local part_pos = player.Character.PrimaryPart.Position;
                local on_screen_pos = workspace.CurrentCamera:WorldToViewportPoint(part_pos);

                local dis_on_screen = CompareDis(mouse_pos, Vector2.new(on_screen_pos.X, on_screen_pos.Y));

                if (getgenv().Void.Aiming.Triggerbot.Prediction.Enabled == true) then 
                    if IsOnScreen(player.Character) and (getgenv().Void.Aiming.Triggerbot.Prediction.Amount >= dis_on_screen) and (dis_on_screen < nearest_dis) then
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                else
                    if (dis_on_screen < nearest_dis) then 
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                end;
                
            end;
        end;
        return nearest_plr;
    end;

end;
local GetNearestPlayerLock = function(t) -- new function cuz i needa fix smth 
        local mouse_pos = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y);
        ------------------------
        local nearest_plr = nil;
        local nearest_dis = math.huge;

        for i, player in ipairs(Players:GetPlayers()) do
            -- Checks
            if (getgenv().Void.Global.Checks.Character == true) and not (player.Character) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.PrimaryPart == true) and not (player.Character.PrimaryPart) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Teamcheck == true) and (player.Team == Players.LocalPlayer.Team) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Whitelisted == true) and table.find(getgenv().Void.Global.Whitelisted, player.Name) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.Friends == true) and player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Dead == true) and (player.Character:FindFirstChild('BodyEffects') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O') and player.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O').Value == true or false) then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Wallcheck == true) and BehindWall(player.Character) == true then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Visible == true) and not IsOnScreen(player.Character) then 
                continue;
            end
            if (getgenv().Void.Global.Checks.Anti == true) and (player.Character.PrimaryPart.Velocity.X >= 35 or player.Character.PrimaryPart.Velocity.Y >= 20 or player.Character.PrimaryPart.Velocity.Z >= 35 or player.Character.PrimaryPart.Velocity.X <= -30 or player.Character.PrimaryPart.Velocity.Y <= -25 or player.Character.PrimaryPart.Velocity.Z <= -30) then
                continue;
            end;
            if (getgenv().Void.Global.Checks.LocalPlayer == true) and player == Players.LocalPlayer then 
                continue;
            end;
            if (getgenv().Void.Global.Checks.Grabbed == true) and (player.Character ~= nil and player.Character:FindFirstChild('GRABBING_CONSTRAINT') or false) then 
                continue;
            end;

            -- Distance calculation
            if (player.Character) and (player.Character and player.Character.PrimaryPart) then 
                local part_pos = player.Character.PrimaryPart.Position;
                local on_screen_pos = workspace.CurrentCamera:WorldToViewportPoint(part_pos);

                local dis_on_screen = CompareDis(mouse_pos, Vector2.new(on_screen_pos.X, on_screen_pos.Y));

                if (getgenv().Void.Aiming.Aimbot.FOV.Enabled == true) then 
                    if IsOnScreen(player.Character) and (getgenv().Void.Aiming.Aimbot.FOV.Radius >= dis_on_screen) and (dis_on_screen < nearest_dis) then
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                else
                    if (dis_on_screen < nearest_dis) then 
                        nearest_dis = dis_on_screen;
                        nearest_plr = player;
                    end;
                end;
            end;
        end;
        return nearest_plr;
end;
-------------------------------------------
-- Nearest Point --
local GetNearestPoint = function(char) 
    local mouse_pos = UserInputService:GetMouseLocation();
    ------------------------
    local nearest_point = nil;
    local nearest_dis = math.huge;
    ------------------------
    if char then 
        for i, part in ipairs(char:GetDescendants()) do 
            if part:IsA('BasePart') then 
                local on_screen_pos = workspace.CurrentCamera:WorldToViewportPoint(part.Position);
                local dis_on_screen = CompareDis(mouse_pos, Vector2.new(on_screen_pos.X, on_screen_pos.Y));
                if (dis_on_screen < nearest_dis) then
                    nearest_dis = dis_on_screen;
                    nearest_point = part;
                end;
            end;
        end;
    end;
    -------------------------------------------
    return nearest_point;
end;
-------------------------------------------
-- Lock --
local LockPredGen = function(char)
    local Resolver = false;
    if char then
        local Data = {
            Positions = {
                Last = nil;
                Current = nil;
            };
            Time      = {
                Last = nil;
                Current = nil;
            };
        };
        ----------------------------------------
        coroutine.wrap(function()
            if (VOID_CONSTRUCTORS.Data.Lock_Target) and (char ~= nil and VOID_CONSTRUCTORS.Data.Lock_Target.Character) then 
                pcall(function()
                    Data.Positions.Last = char.PrimaryPart.Position;
                    Data.Time.Last = tick();
                    ---------------------------------------
                    wait(0.00350);
                    ---------------------------------------
                    Data.Positions.Current = char.PrimaryPart.Position;
                    Data.Time.Current = tick();
                end);
            end;
        end)();

        -- Selected Part --
        local SelectedPart = (
            getgenv().Void.Aiming.Aimbot.Hitting == 0 and GetNearestPoint(char) or
            getgenv().Void.Aiming.Aimbot.Hitting == 1 and char.PrimaryPart or
            getgenv().Void.Aiming.Aimbot.Hitting == 2 and char[getgenv().Void.Aiming.Aimbot.BasePart] or
            getgenv().Void.Aiming.Aimbot.Hitting == 3 and char:children()[math.random(1, #char:children())] or
            char.PrimaryPart
        ) or char.PrimaryPart or char.HumanoidRootPart;
        -- Resolver --
        if (getgenv().Void.Aiming.Aimbot.AutomaticResolver == true) then 
            if (SelectedPart.Velocity.X >= 35 or SelectedPart.Velocity.X <= -30 or SelectedPart.Velocity.Y >= 50 or SelectedPart.Velocity.Y <= -25 or SelectedPart.Velocity.Z >= 40 or SelectedPart.Velocity.Z <= -30) then 
                Resolver = true;
            end;
        end;
        if (Resolver == true) then
            SelectedPart.Velocity = Vector3.new(
                -- X Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).X
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).X
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).X
                    or
                    -- V ?
                    0
                    
                ),
                -- Y Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).Y
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).Y
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).Y
                    or
                    -- V ?
                    0
                    
                ),
                -- Z Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).Z
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).Z
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).Z
                    or
                    -- V ?
                    0
                    
                )
            );
            SelectedPart.AssemblyLinearVelocity = Vector3.new(
                -- X Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).X
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).X
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).X
                    or
                    -- V ?
                    0
                    
                ),
                -- Y Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).Y
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).Y
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).Y
                    or
                    -- V ?
                    0
                    
                ),
                -- Z Axis
                0 + (
                    -- V1
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v1' and ((char.Humanoid.MoveDirection * char.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Aimbot.Resolver.MoveDirection).Z
                    or
                    -- V2
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v2' and ((char.PrimaryPart.CFrame.LookVector * char.Humanoid.WalkSpeed) * (getgenv().Void.Aiming.Aimbot.Resolver.AutomaticPred == true and math.random(1.15, 2)) or getgenv().Void.Aiming.Aimbot.Resolver.LookVector).Z
                    or
                    -- V3
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v3' and 0
                    or
                    -- V4
                    tostring(getgenv().Void.Aiming.Aimbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Aimbot.Resolver.Delta / 100) ).Z
                    or
                    -- V ?
                    0
                    
                )
            );
        end;
        ----------------------------------------------
        -- Actual Prediction --
        if (getgenv().Void.Aiming.Aimbot.Prediction.Enabled == true) then
            Predicted_Pos = SelectedPart.Position + (SelectedPart.Velocity * getgenv().Void.Aiming.Aimbot.Prediction.Amount) + (Vector3.new(
                -- X
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.X.Random[1], getgenv().Void.Aiming.Aimbot.Shake.X.Random[2]) or 0,
                -- Y
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.Y.Random[1], getgenv().Void.Aiming.Aimbot.Shake.Y.Random[2]) or 0,
                -- Z
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.Z.Random[1], getgenv().Void.Aiming.Aimbot.Shake.Z.Random[2]) or 0
            ) / 10);
        else
            Predicted_Pos = SelectedPart.Position + (SelectedPart.Velocity) + (Vector3.new(
                -- X
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.X.Random[1], getgenv().Void.Aiming.Aimbot.Shake.X.Random[2]) or 0,
                -- Y
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.Y.Random[1], getgenv().Void.Aiming.Aimbot.Shake.Y.Random[2]) or 0,
                -- Z
                getgenv().Void.Aiming.Aimbot.Shake.Enabled == true and math.random(getgenv().Void.Aiming.Aimbot.Shake.Z.Random[1], getgenv().Void.Aiming.Aimbot.Shake.Z.Random[2]) or 0
            ) / 10);
        end;
        
        if (getgenv().Void.Aiming.Aimbot.Smoothness.Enabled == true) then 
            return workspace.CurrentCamera:Lerp(CFrame.new(workspace.CurrentCamera.CFrame.Position, Predicted_Pos), getgenv().Void.Aiming.Aimbot.Smoothness.Amount, Enum.EasingStyle[getgenv().Void.Aiming.Aimbot.Smoothness.EasingStyle], Enum.EasingDirection[getgenv().Void.Aiming.Aimbot.Smoothness.EasingDirection]);
        else
            return CFrame.new(workspace.CurrentCamera.CFrame.Position, Predicted_Pos);
        end;
    end;
end;
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    if (VOID_CONSTRUCTORS.Booleans.Lock == true) then 
        if not (VOID_CONSTRUCTORS.Data.Lock_Target) then 
            VOID_CONSTRUCTORS.Data.Lock_Target = GetNearestPlayerLock();
        elseif (VOID_CONSTRUCTORS.Data.Lock_Target) then
            if (getgenv().Void) and (VOID_CONSTRUCTORS) and (VOID_CONSTRUCTORS.Data.Lock_Target and VOID_CONSTRUCTORS.Data.Lock_Target.Character) then
                local Predicted_Pos = LockPredGen(VOID_CONSTRUCTORS.Data.Lock_Target.Character);
                if (Predicted_Pos) then 
                    workspace.CurrentCamera.CFrame = Predicted_Pos;
                    if (getgenv().Void.Aiming.Aimbot.RotateChar == true) then 
                        Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.lookAt(Players.LocalPlayer.Character.PrimaryPart.Position, Predicted_Pos); -- Since its a vector3
                    end;
                end;
            end;
        end;
    end;
end)));
-------------------------------------------
-- Keybind handling --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Keybinds, UserInputService.InputBegan:Connect(function(Key, gameProcessed) 
    if not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.CamSpin]) and (getgenv().Void.Misc.Spinning.Cam.Enabled == true) then 
        local data = {
            start = tick();
        };
        VOID_CONSTRUCTORS.Coroutines['360 Cam'] = coroutine.wrap(function()
            while (true) and (getgenv().Void) do 
                local eta = tick() - data.start;
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position) * CFrame.Angles(0, math.rad(eta * getgenv().Void.Misc.Spinning.Cam.Degrees * getgenv().Void.Misc.Spinning.Cam.Speed), 0) * CFrame.new(0, 0, -5);
                if (eta >= 1 / getgenv().Void.Misc.Spinning.Cam.Speed) then break end; -- Formula
                task.wait();
            end;
        end) -- Put it in a coroutine so it doesn't stop further execution of the code (because the fov is gonna be added later cuz im a lazy fuck XD)
        VOID_CONSTRUCTORS.Coroutines['360 Cam']();
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.CharSpin]) and (getgenv().Void.Misc.Spinning.Char.Enabled == true) then
        local data = {
            start = tick();
            cframe = Players.LocalPlayer.Character.PrimaryPart.CFrame;
            angle = math.rad(getgenv().Void.Misc.Spinning.Char.Degrees);
        };
        VOID_CONSTRUCTORS.Coroutines['360 Char'] = coroutine.wrap(function()
            while (true) and (getgenv().Void) do 
                local eta = tick() - data.start;
                local angle = math.rad(eta * 360 * getgenv().Void.Misc.Spinning.Char.Speed);
                if (angle >= data.angle) then 
                    angle = data.angle;
                end
                Players.LocalPlayer.Character:SetPrimaryPartCFrame(data.cframe * CFrame.Angles(0, angle, 0));
                if (angle >= data.angle) then 
                    break;
                end;
                task.wait();
            end
        end) -- Put it in a coroutine so it doesn't stop further execution of the code (because the fov is gonna be added later cuz im a lazy fuck XD)
        VOID_CONSTRUCTORS.Coroutines['360 Char']();
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.Lock]) and (getgenv().Void.Misc.Lock == true) then
        VOID_CONSTRUCTORS.Booleans.Lock = not VOID_CONSTRUCTORS.Booleans.Lock;
        ---------------------------------------------------------------------
        coroutine.wrap(function()
            if (VOID_CONSTRUCTORS.Booleans.Lock == true) then 
                VOID_CONSTRUCTORS.Data.Lock_Target = nil;
                -----------------------------------------
            elseif (VOID_CONSTRUCTORS.Booleans.Lock == false) then
                VOID_CONSTRUCTORS.Data.Lock_Target = nil;
            end;
        end)();
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.Silent]) and (getgenv().Void.Misc.Silent == true) then
        VOID_CONSTRUCTORS.Booleans.Silent = not VOID_CONSTRUCTORS.Booleans.Silent;
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.Panic]) and (getgenv().Void.Misc.Panic == true) then
        VOID_CONSTRUCTORS:Panic();
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.Triggerbot]) and (getgenv().Void.Misc.TBot == true) then
        VOID_CONSTRUCTORS.Booleans.Triggerbot = not VOID_CONSTRUCTORS.Booleans.Triggerbot;
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.LagSpike]) and (getgenv().Void.Misc.LagSpike.Enabled == true) then
        settings():GetService('NetworkSettings').IncomingReplicationLag = getgenv().Void.Misc.LagSpike.Amount;
        coroutine.wrap(function()
            ReplicatedStorage:FindFirstChild('DefaultSoundEvents'):FindFirstChild('AddCharacterLoadedEvent'):FireServer();
        end)();
        task.wait(getgenv().Void.Misc.LagSpike.Duration);
        settings():GetService('NetworkSettings').IncomingReplicationLag = 0;
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.BadTalk]) and (getgenv().Void.Misc.BadTalk.Enabled == true) then
        -- Bad / Sh*t talk --
        ReplicatedStorage:FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('SayMessageRequest'):FireServer(
            getgenv().Void.Misc.BadTalk.Phrases[math.random(1, #getgenv().Void.Misc.BadTalk.Phrases)],
            'All'
        );
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.AutoSortInv]) and (getgenv().Void.Misc.InventorySorter.Enabled == true) then
        coroutine.wrap(function()
            if not rawget(game.CoreGui:GetChildren(), 'VoidGuns') then
                CACHE = Instance.new('Folder', game.CoreGui);
                CACHE.Name = 'VoidGuns'
            else
                CACHE = game.CoreGui.VoidGuns;
            end;
            local Backpack = Players.LocalPlayer.Backpack;
    
            -- Tool Names --
            -- will be adding more soon cuz i dont play da hood fuck that
            local Names = {
                DB = {
                    'Double Barrel';
                    '[Double-Barrel SG]';
                    '[DB]';
                    'DB';
                    '[Double Barrel]';
                    '[Double-Barrel]';
                };
                Rev = {
                    '[Revolver]';
                    'Rev';
                    'Revolver';
                    '[Rev]';
                };
                Phone = {
                    'Phone';
                    '[Phone]';
                };
                Wallet = {
                    'Wallet';
                    '[Wallet]';
                };
                Katana = {
                    'Katana';
                    '[Katana]';
                };
                TSG = {
                    '[TacticalShotgun]';
                    'TacticalShotgun';
                    '[TSG]';
                    '[TG]';
                    '[Tactical-Shotgun]';
                    '[Tactical Shotgun]';
                };
                SG = {
                    'Shotgun';
                    '[SG]';
                    '[Shotgun]';
                    'SG';
                };
                Silencer = {
                    'Silencer';
                    '[Silencer]';
                };
                Bat = {
                    'Bat';
                    '[Bat]';
                };
                Molotov = {
                    'Molotov';
                    '[Molotov]';
                };
                Flamethrower = {
                    'Flamethrower';
                    '[Flamethrower]';
                };
                Taser = {
                    'Taser';
                    '[Taser]';
                };
                -- Food --
                Pizza = {
                    'Pizza';
                    '[Pizza]';
                };
                Chicken = {
                    'Chicken';
                    '[Chicken]';
                };
                Cranberry = {
                    'Cranberry';
                    '[Cranberry]';
                };
                Lettuce = {
                    'Lettuce';
                    '[Lettuce]';
                };
                Popcorn = {
                    'Popcorn';
                    '[Popcorn]';
                };
                HotDog = {
                    'HotDog';
                    'Hotdog';
                    '[HotDog]';
                    '[Hotdog]';
                };
                -- Misc ig?? --
                Flower = {
                    'Flower';
                    '[Flower]';
                }; -- legit adding useless ass shit but for the quality.
                PepperSpray = {
                    'PepperSpray';
                    '[PepperSpray]';
                };
                Cuffs = {
                    'Cuffs';
                    '[Cuffs]';
                };
            };
            -- Accepted aliases
            local DB_Aliases = {
                'DB';
                'DoubleBarrel';
                'Double-Barrel';
            }; -- Double Barrel Shotgun aliases
            local Rev_Aliases = {
                'Rev';
                'Revolver';
            }; -- Revolver aliases
            local Phone_Aliases = {
                'Phone';
            }; -- Phone aliases
            local Wallet_Aliases = {
                'Wallet';
            }; -- Wallet aliases
            local Katana_Aliases = {
                'Katana';
            }; -- Katana aliases
            local TSG_Aliases = {
                'TacticalShotgun';
                'TSG';
                'Tactical-Shotgun';
                'Tactical Shotgun';
            }; -- Tactical shotgun aliases
            local Shotgun_Aliases = {
                'Shotgun';
                'SG';
                'ShotG';
                'Shotg';
            };
            local Flower_Aliases = {
                'Flower';
                '[Flower]';
            };
            local Silencer_Aliases = {
                'Silencer';
            };
            local Bat_Aliases = {
                'Bat';
            };
            local Molotov_Aliases = {
                'Molotov';
            };
            local Flamethrower_Aliases = {
                'Flamethrower';
                'Flamesplitter';
                'FT';
            };
            local Taser_Aliases = {
                'Taser';
            };
            local PepperSpray_Aliases = {
                'PepperSpray';
                'PS';
                'pepperspray';
            };
            local Cuffs_Aliases = {
                'Cuffs';
                '[Cuffs]';
            };
            local Pizza_Aliases = {
                'Pizza';
                '[Pizza]';
            };
            local Chicken_Aliases = {
                'Chicken';
                '[Chicken]';
                'Turkey';
            };
            local Cranberry_Aliases = {
                'Cranberry';
                '[Cranberry]';
            };
            local Lettuce_Aliases = {
                'Lettuce';
                '[Lettuce]';
                'Salad';
            };
            local Popcorn_Aliases = {
                'Popcorn';
                'PC';
                'pc';
                '[Popcorn]';
            };
            local HotDog_Aliases = {
                'Hotdog';
                '[HotDog]';
                '[Hotdog]';
                'HotDog';
            };
            -------------------------------------
            -- Data
            local Data = {};
            -------------------------------------
            for index, tool in ipairs(Backpack:GetChildren()) do
                tool.Parent = CACHE;
            end;
            for order, gun in ipairs(getgenv().Void.Misc.InventorySorter.List) do
                -- DB
                if table.find(DB_Aliases, gun) then 
                    -- Double Barrel Shotgun
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.DB, tool.Name) then 
                            Data.DB = tool;
                        end;
                    end;
                    if (Data.DB) then 
                        Data.DB.Parent = Backpack;
                    end;
                elseif table.find(Rev_Aliases, gun) then
                    -- REV
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Rev, tool.Name) then 
                            Data.Rev = tool;
                        end;
                    end;
                    if (Data.Rev) then 
                        Data.Rev.Parent = Backpack;
                    end;
                elseif table.find(Phone_Aliases, gun) then
                    -- PHONE
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Phone, tool.Name) then 
                            Data.Phone = tool;
                        end;
                    end;
                    if (Data.Phone) then 
                        Data.Phone.Parent = Backpack;
                    end;
                elseif table.find(Wallet_Aliases, gun) then
                    -- WALLET
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Wallet, tool.Name) then 
                            Data.Wallet = tool;
                        end;
                    end;
                    if (Data.Wallet) then 
                        Data.Wallet.Parent = Backpack;
                    end;
                elseif table.find(Katana_Aliases, gun) then
                    -- KATANA
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Katana, tool.Name) then 
                            Data.Katana = tool;
                        end;
                    end;
                    if (Data.Katana) then 
                        Data.Katana.Parent = Backpack;
                    end;
                elseif table.find(TSG_Aliases, gun) then
                    -- TACTICAL SHOTGUN
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.TSG, tool.Name) then 
                            Data.TSG = tool;
                        end;
                    end;
                    if (Data.TSG) then 
                        Data.TSG.Parent = Backpack;
                    end;
                elseif table.find(Shotgun_Aliases, gun) then
                    -- SHOTGUN
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.SG, tool.Name) then 
                            Data.SG = tool;
                        end;
                    end;
                    if (Data.SG) then 
                        Data.SG.Parent = Backpack;
                    end;
                elseif table.find(Flower_Aliases, gun) then
                    -- FLOWER
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Flower, tool.Name) then 
                            Data.Flower = tool;
                        end;
                    end;
                    if (Data.Flower) then 
                        Data.Flower.Parent = Backpack;
                    end;
                elseif table.find(Silencer_Aliases, gun) then
                    -- SILENCER
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Silencer, tool.Name) then 
                            Data.Silencer = tool;
                        end;
                    end;
                    if (Data.Silencer) then 
                        Data.Silencer.Parent = Backpack;
                    end;
                elseif table.find(Bat_Aliases, gun) then
                    -- BAT
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Bat, tool.Name) then 
                            Data.Bat = tool;
                        end;
                    end;
                    if (Data.Bat) then 
                        Data.Bat.Parent = Backpack;
                    end;
                elseif table.find(Molotov_Aliases, gun) then
                    -- MOLOTOV
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Molotov, tool.Name) then 
                            Data.Molotov = tool;
                        end;
                    end;
                    if (Data.Molotov) then 
                        Data.Molotov.Parent = Backpack;
                    end;
                elseif table.find(Flamethrower_Aliases, gun) then
                    -- FLAMETHROWER
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Flamethrower, tool.Name) then 
                            Data.Flamethrower = tool;
                        end;
                    end;
                    if (Data.Flamethrower) then 
                        Data.Flamethrower.Parent = Backpack;
                    end;
                elseif table.find(Taser_Aliases, gun) then
                    -- TASER
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Taser, tool.Name) then 
                            Data.Taser = tool;
                        end;
                    end;
                    if (Data.Taser) then 
                        Data.Taser.Parent = Backpack;
                    end;
                elseif table.find(PepperSpray_Aliases, gun) then
                    -- PEPPER SPRAY
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.PepperSpray, tool.Name) then 
                            Data.PepperSpray = tool;
                        end;
                    end;
                    if (Data.PepperSpray) then 
                        Data.PepperSpray.Parent = Backpack;
                    end;
                elseif table.find(Cuffs_Aliases, gun) then
                    -- CUFFS
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Cuffs, tool.Name) then 
                            Data.Cuffs = tool;
                        end;
                    end;
                    if (Data.Cuffs) then 
                        Data.Cuffs.Parent = Backpack;
                    end;
                elseif table.find(Pizza_Aliases, gun) then
                    -- PIZZA
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Pizza, tool.Name) then 
                            Data.Pizza = tool;
                        end;
                    end;
                    if (Data.Pizza) then 
                        Data.Pizza.Parent = Backpack;
                    end;
                elseif table.find(Chicken_Aliases, gun) then
                    -- CHICKEN
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Chicken, tool.Name) then 
                            Data.Chicken = tool;
                        end;
                    end;
                    if (Data.Chicken) then 
                        Data.Chicken.Parent = Backpack;
                    end;
                elseif table.find(Lettuce_Aliases, gun) then
                    -- LETTUCE
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Lettuce, tool.Name) then 
                            Data.Lettuce = tool;
                        end;
                    end;
                    if (Data.Lettuce) then 
                        Data.Lettuce.Parent = Backpack;
                    end;
                elseif table.find(Popcorn_Aliases, gun) then
                    -- POPCORN
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.Popcorn, tool.Name) then 
                            Data.Popcorn = tool;
                        end;
                    end;
                    if (Data.Popcorn) then 
                        Data.Popcorn.Parent = Backpack;
                    end;
                elseif table.find(HotDog_Aliases, gun) then
                    -- HOT DOG
                    for idx, tool in ipairs(CACHE:GetChildren()) do 
                        if table.find(Names.HotDog, tool.Name) then 
                            Data.HotDog = tool;
                        end;
                    end;
                    if (Data.HotDog) then 
                        Data.HotDog.Parent = Backpack;
                    end;
                end;
            end;
            --------------------------------
            for idx, tool in ipairs(CACHE:GetChildren()) do
                tool.Parent = Backpack;
            end;
        end)();
        -------------------------------------------
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.Macro]) and (getgenv().Void.Misc.Macro.Enabled == true) then
        VOID_CONSTRUCTORS.Booleans.Macro = not VOID_CONSTRUCTORS.Booleans.Macro;
        if (VOID_CONSTRUCTORS.Booleans.Macro == true) then 
            VOID_CONSTRUCTORS.Coroutines['Macro'] = coroutine.wrap(function()
                if tostring(getgenv().Void.Misc.Macro.Mode):lower() == 'legit' then 
                    if tostring(getgenv().Void.Misc.Macro.Method):lower() == 'keypress' then 
                        repeat
                            RunService.RenderStepped:Wait();
                            keypress(0x49);
                            RunService.RenderStepped:Wait();
                            keyrelease(0x49);
                            RunService.RenderStepped:Wait();
                            keypress(0x4F);
                            RunService.RenderStepped:Wait();
                            keyrelease(0x4F);
                            RunService.RenderStepped:Wait();
                        until VOID_CONSTRUCTORS.Booleans.Macro == false;
                    elseif tostring(getgenv().Void.Misc.Macro.Method):lower() == 'virtual' then
                        repeat
                            RunService.RenderStepped:Wait();
                            VirtualInputManager:SendKeyEvent(true, 'I', false, game);
                            RunService.RenderStepped:Wait();
                            VirtualInputManager:SendKeyEvent(true, 'O', false, game);
                            RunService.RenderStepped:Wait();
                            VirtualInputManager:SendKeyEvent(true, 'I', false, game);
                            RunService.RenderStepped:Wait();
                            VirtualInputManager:SendKeyEvent(true, 'O', false, game);
                            RunService.RenderStepped:Wait();
                        until VOID_CONSTRUCTORS.Booleans.Macro == false;
                    end;
                elseif tostring(getgenv().Void.Misc.Macro.Mode):lower() == 'blatant' then
                    if tostring(getgenv().Void.Misc.Macro.Method):lower() == 'keypress' then 
                            RunService.RenderStepped:Wait();
                            keypress(0x49);
                            RunService.RenderStepped:Wait();
                            keyrelease(0x49);
                            RunService.RenderStepped:Wait();
                            keypress(0x4F);
                            RunService.RenderStepped:Wait();
                            keyrelease(0x4F);
                    elseif tostring(getgenv().Void.Misc.Macro.Method):lower() == 'virtual' then
                        RunService.RenderStepped:Wait();
                        VirtualInputManager:SendKeyEvent(true, 'I', false, game);
                        RunService.RenderStepped:Wait();
                        VirtualInputManager:SendKeyEvent(true, 'O', false, game);
                        RunService.RenderStepped:Wait();
                    end;
                end;
            end);
            VOID_CONSTRUCTORS.Coroutines['Macro']();
        end;
    elseif not (gameProcessed) and (Key.KeyCode == Enum.KeyCode[getgenv().Void.Global.Keybinds.SilentStrafe]) and (getgenv().Void.Aiming.Silentbot.Strafe.Enabled == true) then
        VOID_CONSTRUCTORS.Booleans.Strafe = not VOID_CONSTRUCTORS.Booleans.Strafe;
    end
end));
-------------------------------------------
-------------------------------------------
-- Memory Spoofer --
-------------------------------------------
VOID_CONSTRUCTORS.Coroutines['MemSpoofer'] = coroutine.wrap(function()
    while (true) and (getgenv().Void) do
        if (getgenv().Void) and (getgenv().Void.Misc.MemSpoofer.Enabled == true) then 
            VOID_CONSTRUCTORS.Coroutines['MemSpoofing'] = coroutine.wrap(function()
                local PerformanceStats = CoreGui:WaitForChild('RobloxGui'):WaitForChild('PerformanceStats', 1);
                local DevConsole = CoreGui:WaitForChild('DevConsoleMaster', 1);
                if (PerformanceStats ~= nil) then
                    -- Method 1
                    if (getgenv().Void.Misc.MemSpoofer.Method == 1) then 
                        coroutine.wrap(function()
                            for index, key in next, PerformanceStats:GetDescendants() do 
                                if key:IsA('TextLabel') and key.Text == 'Mem' then 
                                    VOID_CONSTRUCTORS.Memory += tonumber(string.format('%.2f', math.random() + math.random(-1, 1) ));
                                    if (VOID_CONSTRUCTORS.Memory < math.random(getgenv().Void.Misc.MemSpoofer.Range[1], getgenv().Void.Misc.MemSpoofer.Range[2])) then 
                                        VOID_CONSTRUCTORS.Memory += math.random() + math.random(1, 2);
                                    elseif (VOID_CONSTRUCTORS.Memory > math.random(getgenv().Void.Misc.MemSpoofer.Range[1] - math.random(10, 40), getgenv().Void.Misc.MemSpoofer.Range[2] - math.random(10, 30))) then
                                        VOID_CONSTRUCTORS.Memory -= math.random() + math.random(1, 2);
                                    end
                                    key.Parent.ValueLabel.Text = string.format('%.2f MB', VOID_CONSTRUCTORS.Memory);
                                end
                            end
                            if PerformanceStats:FindFirstChild('PS_Viewer') then 
                                for index, key in next, PerformanceStats:FindFirstChild('PS_Viewer'):GetDescendants() do 
                                    if key:IsA('TextLabel') and string.find(key.Text, 'Current') then 
                                        key.Text = string.format('Current: %.2f MB', VOID_CONSTRUCTORS.Memory)
                                    end;
                                    if key:IsA('TextLabel') and string.find(key.Text, 'Average') then 
                                        key.Text = string.format('Average: %.2f MB', VOID_CONSTRUCTORS.Memory - (math.random() * 1.45));
                                    end;
                                end
                            end;
                        end)();
                    -- Method 0
                    elseif (getgenv().Void.Misc.MemSpoofer.Method == 0) then
                        coroutine.wrap(function()
                            for index, key in next, PerformanceStats:GetDescendants() do 
                                if key:IsA('TextLabel') and key.Text == 'Mem' then
                                    if not VOID_CONSTRUCTORS.Connections.CACHE_MEMORY['Spoofer1'] then
                                        -- Spoofer 1 is for the profile info
                                        -- Spoofer 2 is for the dev console
                                        VOID_CONSTRUCTORS.Connections.CACHE_MEMORY.Spoofer1 = key.Parent.ValueLabel:GetPropertyChangedSignal('Text'):Connect(function()
                                            if (getgenv().Void.Misc.MemSpoofer.Enabled == true) then 
                                                coroutine.wrap(function()
                                                    VOID_CONSTRUCTORS.Memory += tonumber(string.format('%.2f', math.random() + math.random(-1, 1) ));
                                                    if (VOID_CONSTRUCTORS.Memory < math.random(getgenv().Void.Misc.MemSpoofer.Range[1], getgenv().Void.Misc.MemSpoofer.Range[2])) then 
                                                        VOID_CONSTRUCTORS.Memory += math.random() + math.random(1, 2);
                                                    elseif (VOID_CONSTRUCTORS.Memory > math.random(getgenv().Void.Misc.MemSpoofer.Range[1] - math.random(10, 40), getgenv().Void.Misc.MemSpoofer.Range[2] - math.random(10, 30))) then
                                                        VOID_CONSTRUCTORS.Memory -= math.random() + math.random(1, 2);
                                                    end
                                                    key.Parent.ValueLabel.Text = string.format('%.2f MB', VOID_CONSTRUCTORS.Memory);
                                                    task.wait(getgenv().Void.Misc.MemSpoofer.Delay);
                                                end)();
                                            end;
                                        end);
                                    end;
                                end
                            end;
                            if PerformanceStats:FindFirstChild('PS_Viewer') then 
                                for index, key in next, PerformanceStats:FindFirstChild('PS_Viewer'):GetDescendants() do 
                                    if key:IsA('TextLabel') and string.find(key.Text, 'Current') then
                                        -- string.format('Current: %.2f MB', VOID_CONSTRUCTORS.Memory)
                                        if not VOID_CONSTRUCTORS.Connections.CACHE_MEMORY['Current'] then 
                                            VOID_CONSTRUCTORS.Connections.CACHE_MEMORY.Current = key:GetPropertyChangedSignal('Text'):Connect(function()
                                                key.Text = string.format('Current: %.2f MB', VOID_CONSTRUCTORS.Memory);
                                                task.wait(getgenv().Void.Misc.MemSpoofer.Delay);
                                            end);
                                        end;
                                    end;
                                    if key:IsA('TextLabel') and string.find(key.Text, 'Average') then 
                                        if not VOID_CONSTRUCTORS.Connections.CACHE_MEMORY['Avg'] then 
                                            VOID_CONSTRUCTORS.Connections.CACHE_MEMORY.Avg = key:GetPropertyChangedSignal('Text'):Connect(function()
                                                key.Text = string.format('Average: %.2f MB', VOID_CONSTRUCTORS.Memory + math.random());
                                                task.wait(getgenv().Void.Misc.MemSpoofer.Delay);
                                            end);
                                        end;
                                    end;
                                end
                            end;
                        end)();
                    end;
                    
                end;
                if (DevConsole ~= nil) then
                    if (getgenv().Void.Misc.MemSpoofer.Method == 1) then 
                        coroutine.wrap(function()
                            for index, key in next, DevConsole:GetDescendants() do 
                                if key:IsA('TextButton') and key.Name == 'MemoryUsage_MB' then
                                    key.Text = string.format('%d MB', math.floor(tonumber(VOID_CONSTRUCTORS.Memory)));
                                end;
                            end
                        end)();
                    elseif (getgenv().Void.Misc.MemSpoofer.Method == 0) then
                        coroutine.wrap(function()
                            for index, key in next, DevConsole:GetDescendants() do 
                                if key:IsA('TextButton') and key.Name == 'MemoryUsage_MB' then
                                    if not VOID_CONSTRUCTORS.Connections.CACHE_MEMORY.DevConsole then 
                                        VOID_CONSTRUCTORS.Connections.CACHE_MEMORY.DevConsole = key:GetPropertyChangedSignal('Text'):Connect(function()
                                            key.Text = string.format('%d MB', math.floor(tonumber(VOID_CONSTRUCTORS.Memory)));
                                            task.wait(getgenv().Void.Misc.MemSpoofer.Delay);
                                        end);
                                    end;
                                    
                                end;
                            end
                        end)();
                    end;
                end;
                
            end); -- wrap the mem spoofer in a coroutine so incase the waitforchild yields non stop it won't stop further execution of code :D
            VOID_CONSTRUCTORS.Coroutines['MemSpoofing']();
            task.wait(getgenv().Void.Misc.MemSpoofer.Delay);
        end;
        task.wait();
    end;
end);
VOID_CONSTRUCTORS.Coroutines['MemSpoofer']();
-------------------------------------------
-- Mod Detector --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    if (getgenv().Void.Misc.Mod.Enabled == true) then 
        VOID_CONSTRUCTORS.Coroutines['ModDetector'] = coroutine.wrap(function()
            if (creatorID) then 
                -- Game made by 1 developer
                for index, player in ipairs(Players:GetPlayers()) do 
                    if (player.UserId == creatorID) then 
                        task.wait(getgenv().Void.Misc.Mod.Delay);
                        if (string.lower(getgenv().Void.Misc.Mod.OnJoin) == 'kick') then 
                            Players.LocalPlayer:Kick(getgenv().Void.Misc.Mod.Notification);
                        elseif (string.lower(getgenv().Void.Misc.Mod.OnJoin) == 'Notify') then
                            sendNotification('Void', getgenv().Void.Misc.Mod.Notification, 3);
                        end;
                    end;
                end;
            elseif (groupID) then
                -- Game made by a whole group
                for index, player in ipairs(Players:GetPlayers()) do 
                    if player:IsInGroup(groupID) then 
                        if player:GetRankInGroup(groupID) >= getgenv().Void.Misc.Mod.Rank then 
                            if (string.lower(getgenv().Void.Misc.Mod.OnJoin) == 'kick') then 
                                Players.LocalPlayer:Kick(getgenv().Void.Misc.Mod.Notification);
                            elseif (string.lower(getgenv().Void.Misc.Mod.OnJoin) == 'Notify') then
                                sendNotification('Void', getgenv().Void.Misc.Mod.Notification, 3);
                            end;
                        end
                    end;
                    task.wait(1); -- wait like 1 second before checking again cause i don't want to get ratelimited
                end;
            end;
        end);
        VOID_CONSTRUCTORS.Coroutines['ModDetector']();
    end;
    task.wait();
end)));
-------------------------------------------
-- Auto Pred --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    if (getgenv().Void) and (getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Enabled == true) then 
        if tostring(getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Mode):lower() == 'advanced' then
            if (VOID_CONSTRUCTORS.Data.Silent_Target and VOID_CONSTRUCTORS.Data.Silent_Target.Character and VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart) and (Players.LocalPlayer.Character and Players.LocalPlayer.Character.PrimaryPart) then
                local Magnitude = (Players.LocalPlayer.Character.PrimaryPart.Position - VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Position).Magnitude
                local Type = '';
                if (Magnitude >= getgenv().Void.Aiming.Silentbot.Distances.Far) then 
                    Type = 'far';
                elseif (Magnitude < getgenv().Void.Aiming.Silentbot.Distances.Far and Magnitude >= getgenv().Void.Aiming.Silentbot.Distances.Mid) then
                    Type = 'mid';
                else
                    Type = 'close';
                end;
                getgenv().Void.Aiming.Silentbot.Prediction.Amount = AdvancedPred(Stats.Network.ServerStatsItem['Data Ping']:GetValue(), Type or 'close')
            end;
        elseif tostring(getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Mode):lower() == 'unadvanced' then
            getgenv().Void.Aiming.Silentbot.Prediction.Amount = 
            -- 30 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 30 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 39) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[30] or
            -- 40 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 40 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 49) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[40] or
            -- 50 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 50 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 59) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[50] or
            -- 60 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 60 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 69) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[60] or
            -- 70 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 70 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 79) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[70] or
            -- 80 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 80 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 89) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[80] or
            -- 90 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 90 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 99) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[90] or
            -- 100 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 100 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 109) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[100] or
            -- 110 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 110 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 119) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[110] or
            -- 120 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 120 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 129) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[120] or
            -- 130 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 130 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 139) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[130] or
            -- 140 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 140 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 149) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[140] or
            -- >140 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 150) and getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Sets[140] + (Stats.Network.ServerStatsItem['Data Ping']:GetValue() / (Stats.Network.ServerStatsItem['Data Ping']:GetValue() - (Stats.Network.ServerStatsItem['Data Ping']:GetValue() - 5) )); -- This is the worst thing i ever made
            -- GG THANKS VOID V3 (i was lazy to re-write it all so fuck you!! gg !!!)
        end;
    end;
    if (getgenv().Void) and (getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Enabled == true) then
        if tostring(getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Mode):lower() == 'advanced' then
            if (VOID_CONSTRUCTORS.Data.Lock_Target and VOID_CONSTRUCTORS.Data.Lock_Target.Character and VOID_CONSTRUCTORS.Data.Lock_Target.Character.PrimaryPart) and (Players.LocalPlayer.Character and Players.LocalPlayer.Character.PrimaryPart) then
                local Magnitude = (Players.LocalPlayer.Character.PrimaryPart.Position - VOID_CONSTRUCTORS.Data.Lock_Target.Character.PrimaryPart.Position).Magnitude
                local Type = '';
                if (Magnitude >= getgenv().Void.Aiming.Aimbot.Distances.Far) then 
                    Type = 'far';
                elseif (Magnitude < getgenv().Void.Aiming.Aimbot.Distances.Far and Magnitude >= getgenv().Void.Aiming.Aimbot.Distances.Mid) then
                    Type = 'mid';
                else
                    Type = 'close';
                end;
                getgenv().Void.Aiming.Aimbot.Prediction.Amount = AdvancedPred(Stats.Network.ServerStatsItem['Data Ping']:GetValue(), Type or 'close')
            end;
        elseif tostring(getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Mode):lower() == 'unadvanced' then
            getgenv().Void.Aiming.Aimbot.Prediction.Amount = 
            -- 30 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 30 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 39) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[30] or
            -- 40 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 40 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 49) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[40] or
            -- 50 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 50 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 59) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[50] or
            -- 60 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 60 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 69) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[60] or
            -- 70 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 70 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 79) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[70] or
            -- 80 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 80 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 89) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[80] or
            -- 90 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 90 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 99) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[90] or
            -- 100 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 100 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 109) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[100] or
            -- 110 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 110 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 119) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[110] or
            -- 120 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 120 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 129) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[120] or
            -- 130 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 130 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 139) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[130] or
            -- 140 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 140 and Stats.Network.ServerStatsItem['Data Ping']:GetValue() <= 149) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[140] or
            -- >140 Ping
            (Stats.Network.ServerStatsItem['Data Ping']:GetValue() >= 150) and getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Sets[140] + (Stats.Network.ServerStatsItem['Data Ping']:GetValue() / (Stats.Network.ServerStatsItem['Data Ping']:GetValue() - (Stats.Network.ServerStatsItem['Data Ping']:GetValue() - 5) )); -- This is the worst thing i ever made
            -- GG THANKS VOID V3 (i was lazy to re-write it all so fuck you!! gg !!!)
        end;
    end;
end)));
-------------------------------------------
-- Anti Log --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    if (getgenv().Void.Misc.AntiLog == true) then 
        coroutine.wrap(pcall)(function()
            for i, connection in ipairs(getconnections(ScriptContext.Error)) do 
                connection:Disable();
            end
        end);
    end
end)));
-------------------------------------------
-- Triggerbot --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    if (VOID_CONSTRUCTORS.Booleans.Triggerbot == true) then
        local Shoot = true;
        -- No Pred --
        if (getgenv().Void) and (getgenv().Void.Aiming.Triggerbot.Prediction.Enabled == false) then
            if (getgenv().Void.Aiming.Triggerbot.Delay.Enabled == false) then
                -- If player found
                if (Players.LocalPlayer:GetMouse().Target.Parent:FindFirstChildOfClass('Humanoid') or Players.LocalPlayer:GetMouse().Target.Parent.Parent:FindFirstChildOfClass('Humanoid')) then
                    -- Declare the player variable
                    local Player = Players:GetPlayerFromCharacter(Players.LocalPlayer:GetMouse().Target.Parent) or Players:GetPlayerFromCharacter(Players.LocalPlayer:GetMouse().Target.Parent.Parent);
                    -- Checks --

                    -- main player check
                    if not (Player) then 
                        return;
                    end;
                    
                    -- part check --
                    local HitPart = (Players.LocalPlayer:GetMouse().Target):IsA('BasePart') and (Players.LocalPlayer:GetMouse().Target) or (Players.LocalPlayer:GetMouse().Target.Parent):IsA('BasePart') and (Players.LocalPlayer:GetMouse().Target.Parent);
                    if (getgenv().Void.Aiming.Triggerbot.HitParts ~= true) then 
                        if not table.find(getgenv().Void.Aiming.Triggerbot.HitParts, HitPart.Name) then 
                            Shoot = false;
                        end;
                    end;

                    -------------------------------------------
                    -- TEAM CHECK --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Teamcheck == true) then 
                        if (Player.Team == Players.LocalPlayer.Team) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- WHITELISTED --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Whitelisted == true) then 
                        if table.find(getgenv().Void.Global.Whitelisted, Player.Name) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- FRIENDS --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Friends == true) then 
                        if Player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- DEAD --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Dead == true) then 
                        if (Player:FindFirstChildOfClass('Humanoid') ~= nil and Player:FindFirstChildOfClass('Humanoid').Health <= 3) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end
                    end;
                    -------------------------------------------
                    -- LOCALPLAYER --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.LocalPlayer == true) then 
                        if Player == Players.LocalPlayer then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;

                    -------------------------------------------
                    -- RADIUS --
                    -------------------------------------------
                    if (getgenv().Void.Aiming.Triggerbot.Radius.Enabled == true) then
                        -- thanks void get nearest function
                        -- gg

                        local MousePos = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y);
                        local PartPos = Player.Character.PrimaryPart.Position;
                        local OnScreenPos = workspace.CurrentCamera:WorldToScreenPoint(PartPos);
                        local DisOnScreen = CompareDis(MousePos, Vector2.new(OnScreenPos.X, OnScreenPos.Y));
                        if (DisOnScreen > getgenv().Void.Aiming.Triggerbot.Radius.Amount) then
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- Shooting --
                    
                    if (Shoot == true) then
                        if (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'legit') then 
                            mouse1click();
                        elseif (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'blatant') then
                            coroutine.wrap(function() 
                                repeat
                                    mouse1press();
                                    task.wait();
                                until Player == nil;
                                mouse1release();
                            end)();
                        end;
                    end;
                end;
            else
                -- If player found
                if (Players.LocalPlayer:GetMouse().Target.Parent:FindFirstChildOfClass('Humanoid')) then
                    -- Declare the player variable
                    local Player = Players:GetPlayerFromCharacter(Players.LocalPlayer:GetMouse().Target.Parent);
                    -- Checks --

                    -------------------------------------------
                    -- TEAM CHECK --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Teamcheck == true) then 
                        if (Player.Team == Players.LocalPlayer.Team) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- WHITELISTED --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Whitelisted == true) then 
                        if table.find(getgenv().Void.Global.Whitelisted, Player.Name) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- FRIENDS --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Friends == true) then 
                        if Player:IsFriendsWith(Players.LocalPlayer.UserId) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- DEAD --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Dead == true) then 
                        if (Player:FindFirstChildOfClass('Humanoid') ~= nil and Player:FindFirstChildOfClass('Humanoid').Health <= 3) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end
                    end;
                    -------------------------------------------
                    -- LOCALPLAYER --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.LocalPlayer == true) then 
                        if Player == Players.LocalPlayer then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;

                    -------------------------------------------

                    -- Shooting --
                    
                    if (Shoot == true) then
                        if (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'legit') then 
                            mouse1click();
                            task.wait(getgenv().Void.Aiming.Triggerbot.Delay.Delay / 1000);
                        elseif (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'blatant') then
                            coroutine.wrap(function() 
                                repeat
                                    mouse1press();
                                    task.wait(getgenv().Void.Aiming.Triggerbot.Delay.Delay / 1000);
                                until Player == nil;
                                mouse1release();
                            end)();
                        end;
                    end;
                end;
                -- End of checking (no pred) --
                -------------------------------------------
            end;
        elseif (getgenv().Void) and (getgenv().Void.Aiming.Triggerbot.Prediction.Enabled == true) then
            -- FULL PRED --
            if (getgenv().Void.Aiming.Triggerbot.Delay.Enabled == false) then
                if (VOID_CONSTRUCTORS.Data.Trigger_Target ~= nil and VOID_CONSTRUCTORS.Data.Trigger_Target.Character ~= nil) then 
                    if (VOID_CONSTRUCTORS.Data.Trigger_Target.Character.PrimaryPart) then 
                        local HitPart = VOID_CONSTRUCTORS.Data.Trigger_Target.Character.PrimaryPart;
                        -- please let primarypart slide you fucking retards --
                        -- swear to god you config makers are always dumbasses --
                        if (getgenv().Void.Aiming.Triggerbot.HitParts ~= true) then 
                            if not table.find(getgenv().Void.Aiming.Triggerbot.HitParts, HitPart.Name) then 
                                Shoot = false;
                            end;
                        end;

                    -------------------------------------------
                    -- TEAM CHECK --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Teamcheck == true) then 
                        if (VOID_CONSTRUCTORS.Data.Trigger_Target.Team == Players.LocalPlayer.Team) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- WHITELISTED --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Whitelisted == true) then 
                        if table.find(getgenv().Void.Global.Whitelisted, VOID_CONSTRUCTORS.Data.Trigger_Target.Name) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- FRIENDS --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Friends == true) then 
                        if VOID_CONSTRUCTORS.Data.Trigger_Target:IsFriendsWith(Players.LocalPlayer.UserId) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- DEAD --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Dead == true) then 
                        if (VOID_CONSTRUCTORS.Data.Trigger_Target.Character:FindFirstChildOfClass('Humanoid') ~= nil and VOID_CONSTRUCTORS.Data.Trigger_Target.Character:FindFirstChildOfClass('Humanoid').Health <= 3) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end
                    end;
                    -------------------------------------------
                    -- LOCALPLAYER --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.LocalPlayer == true) then 
                        if VOID_CONSTRUCTORS.Data.Trigger_Target == Players.LocalPlayer then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;

                    -------------------------------------------
                        if (Shoot == true) then
                            if (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'legit') then 
                                mouse1click();
                            elseif (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'blatant') then
                                coroutine.wrap(function() 
                                    repeat
                                        mouse1press();
                                        task.wait();
                                    until VOID_CONSTRUCTORS.Data.Trigger_Target == nil;
                                    mouse1release();
                                end)();
                            end;
                        end;

                    end;
                end;
                
                -- No Delay
            elseif (getgenv().Void.Aiming.Triggerbot.Delay.Enabled == true) then
                if (VOID_CONSTRUCTORS.Data.Trigger_Target ~= nil and VOID_CONSTRUCTORS.Data.Trigger_Target.Character ~= nil) then 
                    if (VOID_CONSTRUCTORS.Data.Trigger_Target.Character.PrimaryPart) then 
                        local HitPart = VOID_CONSTRUCTORS.Data.Trigger_Target.Character.PrimaryPart;
                        -- please let primarypart slide you fucking retards --
                        -- swear to god you config makers are always dumbasses --
                        if (getgenv().Void.Aiming.Triggerbot.HitParts ~= true) then 
                            if not table.find(getgenv().Void.Aiming.Triggerbot.HitParts, HitPart.Name) then 
                                Shoot = false;
                            end;
                        end;
                    -- TEAM CHECK --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Teamcheck == true) then 
                        if (VOID_CONSTRUCTORS.Data.Trigger_Target.Team == Players.LocalPlayer.Team) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- WHITELISTED --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Whitelisted == true) then 
                        if table.find(getgenv().Void.Global.Whitelisted, VOID_CONSTRUCTORS.Data.Trigger_Target.Name) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- FRIENDS --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Friends == true) then 
                        if VOID_CONSTRUCTORS.Data.Trigger_Target:IsFriendsWith(Players.LocalPlayer.UserId) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;
                    -------------------------------------------
                    -- DEAD --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.Dead == true) then 
                        if (VOID_CONSTRUCTORS.Data.Trigger_Target.Character:FindFirstChildOfClass('Humanoid') ~= nil and VOID_CONSTRUCTORS.Data.Trigger_Target.Character:FindFirstChildOfClass('Humanoid').Health <= 3) then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end
                    end;
                    -------------------------------------------
                    -- LOCALPLAYER --
                    -------------------------------------------
                    if (getgenv().Void.Global.Checks.LocalPlayer == true) then 
                        if VOID_CONSTRUCTORS.Data.Trigger_Target == Players.LocalPlayer then 
                            Shoot = false; -- retrieve the shoot upvalue and set it to false (this will be used later cuz i don't wanna make it return smth if its not valid)
                        end;
                    end;

                    -------------------------------------------
                        if (Shoot == true) then
                            if (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'legit') then 
                                mouse1click();
                                task.wait(getgenv().Void.Aiming.Triggerbot.Delay.Delay / 1000);
                            elseif (string.lower(getgenv().Void.Aiming.Triggerbot.Mode) == 'blatant') then
                                coroutine.wrap(function() 
                                    repeat
                                        mouse1press();
                                        task.wait(getgenv().Void.Aiming.Triggerbot.Delay.Delay / 1000);
                                    until VOID_CONSTRUCTORS.Data.Trigger_Target == nil;
                                    mouse1release();
                                end)();
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end)));
-------------------------------------------
-- Watermark --
-------------------------------------------
VOID_CONSTRUCTORS.Assets['Watermark'] = Drawing.new('Text');
VOID_CONSTRUCTORS.Assets['Watermark'].Font = Drawing.Fonts.Plex;
VOID_CONSTRUCTORS.Assets['Watermark'].Size = 12;
VOID_CONSTRUCTORS.Assets['Watermark'].Visible = false;
VOID_CONSTRUCTORS.Assets['Watermark'].Text = 'Void';
VOID_CONSTRUCTORS.Assets['Watermark'].Position = Vector2.new(15, 15);
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    VOID_CONSTRUCTORS.Assets['Watermark'].Visible = getgenv().Void.Misc.Watermark.Enabled;
end)));
-------------------------------------------
-- FOV --
-------------------------------------------
-- Silent --
VOID_CONSTRUCTORS.Assets['FOV_Silent'] = Drawing.new('Circle');
VOID_CONSTRUCTORS.Assets['FOV_Tracer'] = Drawing.new('Line');
-- Lock --
VOID_CONSTRUCTORS.Assets['FOV_Lock'] = Drawing.new('Circle');
-------------------------------------------
-- Silent --
VOID_CONSTRUCTORS.Assets['FOV_Silent'].Visible = false;
-- Lock --
VOID_CONSTRUCTORS.Assets['FOV_Lock'].Visible = false;
-------------------------------------------
VOID_CONSTRUCTORS.Coroutines['FOV'] = coroutine.wrap(function()
    -------------------------------------------
    -- Declare float variables --
    -------------------------------------------
    local SilentHue = 0;
    local LockHue = 0;
    -------------------------------------------
    while (true) and (getgenv().Void) do
        -- Float checking --
        if (SilentHue >= 1) then 
            SilentHue = 0;
        end;
        if (LockHue >= 1) then
            LockHue = 0;
        end;
        -- Silent --
        if (getgenv().Void.Aiming.Silentbot.FOV.Tracer == true) then
            if (getgenv().Void.Aiming.Silentbot.FOV.RainbowTracer == true) then 
                VOID_CONSTRUCTORS.Assets['FOV_Tracer'].Color = Color3.fromHSV(SilentHue, 1, 1);
            else
                VOID_CONSTRUCTORS.Assets['FOV_Tracer'].Color = getgenv().Void.Aiming.Silentbot.FOV.TracerColor;
            end;
            VOID_CONSTRUCTORS.Assets['FOV_Tracer'].Thickness = getgenv().Void.Aiming.Silentbot.FOV.TracerThickness;
            ---------------
            VOID_CONSTRUCTORS.Assets['FOV_Tracer'].Visible = (VOID_CONSTRUCTORS.Booleans.Silent);
            VOID_CONSTRUCTORS.Assets['FOV_Tracer'].From = UserInputService:GetMouseLocation();
            if (VOID_CONSTRUCTORS.Data.Silent_Target == nil) then 
                VOID_CONSTRUCTORS.Assets['FOV_Tracer'].To = UserInputService:GetMouseLocation();
            end;
        elseif (getgenv().Void.Aiming.Silentbot.FOV.Tracer == false) then
            VOID_CONSTRUCTORS.Assets['FOV_Tracer'].Visible = false;
        end;
        if (getgenv().Void.Aiming.Silentbot.FOV.Rainbow == true) then
            VOID_CONSTRUCTORS.Assets['FOV_Silent'].Color = Color3.fromHSV(SilentHue, 1, 1);
            SilentHue += 0.01;
        elseif (getgenv().Void.Aiming.Silentbot.FOV.Rainbow == false) then
            VOID_CONSTRUCTORS.Assets['FOV_Silent'].Color = getgenv().Void.Aiming.Silentbot.FOV.Color;
        else
            VOID_CONSTRUCTORS.Assets['FOV_Silent'].Color = getgenv().Void.Aiming.Silentbot.FOV.Color;
        end;
        -- Lock --
        if (getgenv().Void.Aiming.Aimbot.FOV.Rainbow == true) then
            VOID_CONSTRUCTORS.Assets['FOV_Lock'].Color = Color3.fromHSV(LockHue, 1, 1);
            LockHue += 0.01;
        elseif (getgenv().Void.Aiming.Aimbot.FOV.Rainbow == false) then
            VOID_CONSTRUCTORS.Assets['FOV_Lock'].Color = getgenv().Void.Aiming.Aimbot.FOV.Color;
        else
            VOID_CONSTRUCTORS.Assets['FOV_Lock'].Color = getgenv().Void.Aiming.Aimbot.FOV.Color;
        end;
        ---------------------------------------------------------------
        task.wait(getgenv().Void.Aiming.Aimbot.FOV.RainbowSpeed);
    end;
end);
VOID_CONSTRUCTORS.Coroutines['FOV']();
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    -------------------------------------------
    -- Silent FOV --
    -------------------------------------------
    VOID_CONSTRUCTORS.Assets['FOV_Silent'].Thickness = getgenv().Void.Aiming.Silentbot.FOV.Thickness or 1;
    VOID_CONSTRUCTORS.Assets['FOV_Silent'].NumSides = getgenv().Void.Aiming.Silentbot.FOV.NumSides or 64;
    VOID_CONSTRUCTORS.Assets['FOV_Silent'].Radius = getgenv().Void.Aiming.Silentbot.FOV.Radius;
    VOID_CONSTRUCTORS.Assets['FOV_Silent'].Filled = getgenv().Void.Aiming.Silentbot.FOV.Filled or false;
    VOID_CONSTRUCTORS.Assets['FOV_Silent'].Visible = (getgenv().Void.Aiming.Silentbot.FOV.Enabled == true and getgenv().Void.Aiming.Silentbot.FOV.Circle == true and true or false);
    -------------------------------------------
    -- Lock FOV --
    -------------------------------------------
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].Thickness = getgenv().Void.Aiming.Aimbot.FOV.Thickness or 1;
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].NumSides = getgenv().Void.Aiming.Aimbot.FOV.NumSides or 64;
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].Radius = getgenv().Void.Aiming.Aimbot.FOV.Radius;
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].Filled = getgenv().Void.Aiming.Aimbot.FOV.Filled or false;
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].Visible = getgenv().Void.Aiming.Aimbot.FOV.Enabled or false;
    -------------------------------------------
    -- Positioning --
    -------------------------------------------
    VOID_CONSTRUCTORS.Assets['FOV_Lock'].Position, VOID_CONSTRUCTORS.Assets['FOV_Silent'].Position = UserInputService:GetMouseLocation(), UserInputService:GetMouseLocation(); -- woohoo fixed position cause mouse.hit.p is hooked and also inaccurate pos for the circle wooho!!
end)));
-------------------------------------------
if (getgenv().Void.Misc.UnlockFPS == true) then 
    setfpscap(0);
end;
-------------------------------------------
-------------------------------------------
-- Silent --
-------------------------------------------
table.insert(VOID_CONSTRUCTORS.Connections.Misc, RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function()
    -- Silent
    VOID_CONSTRUCTORS.Data.Silent_Target = GetNearestPlayer('silent');
    -- Triggerbot
    VOID_CONSTRUCTORS.Data.Trigger_Target = GetNearestPlayer('triggerbot');
end)));
-------------------------------------------
-- In-Game Commands --
-------------------------------------------
Players.LocalPlayer.Chatted:Connect(function(Msg)
    if string.lower((Msg):sub(#getgenv().Void.Commands.Prefix, #getgenv().Void.Commands.Prefix)) == string.lower(getgenv().Void.Commands.Prefix) then 
        -- User 100% is meant to run a void command
        local Msg = Msg:sub(2);
        local Args = {};

        for String in Msg:gmatch('%S+') do 
            table.insert(Args, String);
        end;

        local Command = string.lower(Args[1]);

        -- Silent Commands --
        -------------------------------------
        -- Set Pred --
        if (Command == getgenv().Void.Commands.Silent.SetPredAmount) then
            -- Silent pred setter --
            if (#Args < 2) then 
                return;
            end;
            local Pred = tonumber(Args[2]);
            if Pred then 
                getgenv().Void.Aiming.Silentbot.Prediction.Amount = Pred;
            end;
        -------------------------------------
        -- Set FOV size --
        elseif (Command == getgenv().Void.Commands.Silent.SetFOV) then
            -- Silent fov setter --
            if (#Args < 2) then 
                return;
            end;
            local Size = tonumber(Args[2]);
            if Size then 
                getgenv().Void.Aiming.Silentbot.FOV.Radius = Size;
            end;
        -------------------------------------
        -- Disable FOV --
        elseif (Command == getgenv().Void.Commands.Silent.DisableFOV) then
            -- Silent FOV setter --
            -- Silent on / off --
            getgenv().Void.Aiming.Silentbot.FOV.Enabled = false;
        -------------------------------------
        -- Enable FOV --
        elseif (Commnad == getgenv().Void.Commands.Silent.EnableFOV) then
            -- Silent FOV setter --
            -- Silent on / off --
            getgenv().Void.Aiming.Silentbot.FOV.Enabled = true;
        -------------------------------------
        -- Enable Silent --
        elseif (Command == getgenv().Void.Commands.Silent.SetSilent) then
            -- Silent on / off --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Misc.Silent = true;
            else
                getgenv().Void.Misc.Silent = false;
            end;
        -------------------------------------
        -- Silent Auto rotate --
        elseif (Command == getgenv().Void.Commands.Silent.SetRotate) then
            -- Silent rotate on / off --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Silentbot.RotateChar = true;
            else
                getgenv().Void.Aiming.Silentbot.RotateChar = false;
            end;
        ----------------------------------------------
        -- Auto Pred --
        elseif (Command == getgenv().Void.Commands.Silent.SetAutoPred) then
            -- Silent auto pred on / off --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Enabled = true;
            else
                getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Enabled = false;
            end;
        ----------------------------------------------
        -- Auto Pred mode --
        elseif (Command == getgenv().Void.Commands.Silent.SetAutoPredMode) then
            -- Silent auto pred mode --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'advanced') then 
                getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Mode = 'Advanced';
            else
                getgenv().Void.Aiming.Silentbot.Prediction.Automatic.Mode = Status;
            end;
        -------------------------------------
        -- Hit method --
        elseif (Command == getgenv().Void.Commands.Silent.SetHitMethod) then
            -- Hit part method --
            if (#Args < 2) then 
                return;
            end;
            local Method = tonumber(Args[2]);
            getgenv().Void.Aiming.Silentbot.Hitting = Method or 0;
        -------------------------------------
        -- Set miss --
        elseif (Command == getgenv().Void.Commands.Silent.SetMiss) then
            -- Hit miss method --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Silentbot.Miss.Enabled = true;
            else
                getgenv().Void.Aiming.Silentbot.Miss.Enabled = false;
            end;
        -- Bad Talk
        elseif (Command == getgenv().Void.Commands.BadTalk.RemoveAll) then
            -- Remove all bad phrases --
            getgenv().Void.Misc.BadTalk.Phrases = {};
        -------------------------------------
        -- Remove phrase from table with index --
        elseif (Command == getgenv().Void.Commands.BadTalk.RemovePhrase) then
            if (#Args < 2) then 
                return;
            end;
            local Index = tonumber(Args[2]);
            if getgenv().Void.Misc.BadTalk.Phrases[Index] ~= nil then 
                getgenv().Void.Misc.BadTalk.Phrases[Index] = nil;
            end;
        -------------------------------------
        -- Add base64 decoded phrase --
        elseif (Command == getgenv().Void.Commands.BadTalk.AddPhrase) then
            if (#Args < 3) then 
                return;
            end;
            local Index = tonumber(Args[2]);
            local String = tostring(Args[3]);

            local RawString = base64_decode(String);
            if getgenv().Void.Misc.BadTalk.Phrases[Index] ~= nil then 
                getgenv().Void.Misc.BadTalk.Phrases[Index] = RawString;
            end;
        end;
        -------------------------------------
        -- Lock Commands --
        if (Command == getgenv().Void.Commands.Lock.SetPredAmount) then 
            -- Lock pred setter --
            if (#Args < 2) then 
                return;
            end;
            local Pred = tonumber(Args[2]);
            if Pred then 
                getgenv().Void.Aiming.Aimbot.Prediction.Amount = Pred;
            end;
        -------------------------------------
        -- Lock FOV size setter --
        elseif (Command == getgenv().Void.Commands.Lock.SetFOV) then
            -- Lock fov setter --
            if (#Args < 2) then 
                return;
            end;
            local Size = tonumber(Args[2]);
            if Size then 
                getgenv().Void.Aiming.Aimbot.FOV.Radius = Size;
            end;
        -------------------------------------
        -- Lock FOV Disabler --
        elseif (Command == getgenv().Void.Commands.Lock.DisableFOV) then
             -- Lock FOV setter --
            -- Lock on / off --
            getgenv().Void.Aiming.Aimbot.FOV.Enabled = false;
        -------------------------------------
        -- Lock FOV Enabler --
        elseif (Command == getgenv().Void.Commands.Lock.EnableFOV) then
            -- Lock FOV setter --
            -- Lock on / off --
            getgenv().Void.Aiming.Aimbot.FOV.Enabled = true;
        -------------------------------------
        -- Lock Auto Pred --
        elseif (Command == getgenv().Void.Commands.Lock.SetAutoPred) then
            -- Lock auto pred on / off --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Enabled = true;
            else
                getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Enabled = false;
            end;
        -------------------------------------
        -- Lock Auto Pred mode --
        elseif (Command == getgenv().Void.Commands.Lock.SetAutoPredMode) then
            -- Lock auto pred mode --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'advanced') then 
                getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Mode = 'Advanced';
            else
                getgenv().Void.Aiming.Aimbot.Prediction.Automatic.Mode = Status;
            end;
        -------------------------------------
        -- Enable Lock --
        elseif (Command == getgenv().Void.Commands.Lock.SetLock) then
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Misc.Lock = true;
            else
                getgenv().Void.Misc.Lock = false;
            end;
        -------------------------------------
        -- Auto Lock Rotate --
        elseif (Command == getgenv().Void.Commands.Lock.SetRotate) then
            -- Lock rotate on / off --
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Aimbot.RotateChar = true;
            else
                getgenv().Void.Aiming.Aimbot.RotateChar = false;
            end;
        -------------------------------------
        -- Lock Hit method --
        elseif (Command == getgenv().Void.Commands.Lock.SetHitMethod) then
            -- Hit part method --
            if (#Args < 2) then 
                return;
            end;
            local Method = tonumber(Args[2]);
            getgenv().Void.Aiming.Aimbot.Hitting = Method or 0;
        end;


        -------------------------------------
        -- Misc Commands --
        -------------------------------------
        -- REJOIN --
        if (Command == getgenv().Void.Commands.Misc.Rejoin) then 
            TeleportService:Teleport(game.PlaceId, game.JobId, Players.LocalPlayer);
        elseif (Command == getgenv().Void.Commands.Misc.Reset) and (Players.LocalPlayer.Character) then
            for i, v in ipairs(Players.LocalPlayer.Character:GetChildren()) do 
                if (v:IsA('Accessory') or v:IsA('BasePart') or v:IsA('Part') or v:IsA('SpecialMesh') or v:IsA('MeshPart')) then 
                    v:Remove();
                end;
            end;
        -------------------------------------
        -- RESOLVER --
        -------------------------------------
        elseif (Command == getgenv().Void.Commands.Misc.Resolver) then
            if (#Args < 2) then 
                return;
            end;
            local Status = string.lower(tostring(Args[2]));
            if (Status == 'on') then 
                getgenv().Void.Aiming.Silentbot.AutomaticResolver = true;
            else
                getgenv().Void.Aiming.Silentbot.AutomaticResolver = false;
            end;
        -------------------------------------
        -- SET PREFIX --
        -------------------------------------
        elseif (Command == getgenv().Void.Commands.Misc.SetPrefix) then
            if (#Args < 2) then 
                return;
            end;
            local NewPrefix = tostring(Args[2]);
            getgenv().Void.Commands.Prefix = NewPrefix;
        end;
        -------------------------------------
        -------------------------------------
    end;
end);
LPH_NO_VIRTUALIZE(function()
    local GameMT = getrawmetatable(game);
    -- Backup variables
    local OldIndexFunc = GameMT.__index;
    local OldNamecallFunc = GameMT.__namecall;
    
    setreadonly(GameMT, false);
    if (getgenv().Void.Misc.BypassAC == true) and (getgenv().Void.Misc.BypassOnlyAdonis == false) then
        -- This will be so laggy
        GameMT.__namecall = newcclosure(function(self, ...) 
            local NamecallArgs = {...};
    
            local DETECTION_STRINGS = 
            {
                'CHECKER_1';
                'CHECKER';
                'OneMoreTime';
                'checkingSPEED';
                'PERMAIDBAN';
                'BANREMOTE';
                'FORCEFIELD';
                'TeleportDetect';
            };
    
            if (table.find(DETECTION_STRINGS, NamecallArgs[1]) and getnamecallmethod() == 'FireServer') then 
                return;
            end;
            local suc, err = pcall(getfenv, 2);
            if not (err) then 
                if getfenv(2).crash then 
                    hookfunction(getfenv(2).crash, function() 
                        
                    end);
                end;
            end;
            return OldNamecallFunc(self, ...);
        end);
    end;
    GameMT.__index = newcclosure(function(self, idx)
        if (self:IsA('Mouse') and tostring(idx):lower() == 'hit' and self ~= game) then
            -- Prevent shit index hooks (so game.Hit won't return an actual value (as it's nil) )
            local HitChance = HitChanceGen(getgenv().Void.Aiming.Silentbot.HitChance.Chance, getgenv().Void.Aiming.Silentbot.HitChance.Intensity);
            ----------------------------------------
            local Resolver = false;
    
            local Data = {
                Positions = {
                    Last = nil;
                    Current = nil;
                };
                Time      = {
                    Last = nil;
                    Current = nil;
                };
            };
            ----------------------------------------
            if (getgenv().Void.Aiming.Silentbot.HitChance.Enabled == true) and (VOID_CONSTRUCTORS.Data.Silent_Target) and (VOID_CONSTRUCTORS.Booleans.Silent == true) then 
                if (HitChance == true) then
                     ----------------------------------------
                     -- Resolver --
                    if (getgenv().Void.Aiming.Silentbot.AutomaticResolver == true) then 
                        if (VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.X >= 35 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Y >= 20 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Z >= 35 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.X <= -30 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Y <= -25 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Z <= -30) then 
                            Resolver = true;
                        end;
                    end;
                    ----------------------------------------
                    coroutine.wrap(function()
                        if (VOID_CONSTRUCTORS.Data.Silent_Target) and (VOID_CONSTRUCTORS.Data.Silent_Target ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character) then
                            pcall(function()
                                Data.Positions.Last = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Position;
                                Data.Time.Last = tick();
                                ---------------------------------------
                                wait(0.00350);
                                ---------------------------------------
                                Data.Positions.Current = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Position;
                                Data.Time.Current = tick();
                            end);
                        end;
                    end)();
                    ----------------------------------------
                    local SelectedPart = (
                        getgenv().Void.Aiming.Silentbot.Hitting == 0 and GetNearestPoint(VOID_CONSTRUCTORS.Data.Silent_Target.Character) or
                        getgenv().Void.Aiming.Silentbot.Hitting == 1 and VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart or
                        getgenv().Void.Aiming.Silentbot.Hitting == 2 and VOID_CONSTRUCTORS.Data.Silent_Target.Character[getgenv().Void.Aiming.Silentbot.BasePart] or
                        getgenv().Void.Aiming.Silentbot.Hitting == 3 and VOID_CONSTRUCTORS.Data.Silent_Target.Character:children()[math.random(1, #VOID_CONSTRUCTORS.Data.Silent_Target.Character:children())] or
                        VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart
                    ) or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart or VOID_CONSTRUCTORS.Data.Silent_Target.Character.HumanoidRootPart;
                    if (Resolver == true) then
                        SelectedPart.Velocity = Vector3.new(
                            -- X Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).X
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).X
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).X
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Y Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Y
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Y
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Y
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Z Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Z
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Z
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Z
                                or
                                -- V ?
                                0
                                
                            )
                        );
                        SelectedPart.AssemblyLinearVelocity = Vector3.new(
                            -- X Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).X
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).X
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).X
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Y Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Y
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Y
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Y
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Z Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Z
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Z
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Z
                                or
                                -- V ?
                                0
                                
                            )
                        );
                    end;
                    -- Predicted Pos --
                    local MissChanceGen = function(Percentage) 
                        return math.random() <= (Percentage / 100);
                    end;
                    if (getgenv().Void.Aiming.Silentbot.Miss.Enabled == true) then 
                        local Miss = MissChanceGen(getgenv().Void.Aiming.Silentbot.Miss.Chance);
                        if (Miss == true) then 
                            SelectedPart.Velocity += Vector3.new(
                                -- X Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.X[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.X[2]),
                                -- Y Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.Y[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.Y[2]),
                                -- Z Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.Z[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.Z[2])
                            );
                        end;
                    end;
    
                    local HOOK_POS = true;
    
                    local Predicted_Pos = SelectedPart.Position + SelectedPart.Velocity * (getgenv().Void.Aiming.Silentbot.Prediction.Enabled == true and getgenv().Void.Aiming.Silentbot.Prediction.Amount or 1);
                    local OnScreenPos = workspace.CurrentCamera:WorldToViewportPoint(Predicted_Pos);
                    OnScreenPos = CFrame.new(OnScreenPos);
                    -- Tracer --
                    VOID_CONSTRUCTORS.Assets['FOV_Tracer'].To = Vector2.new(OnScreenPos.X, OnScreenPos.Y);
                    -- Return & Etc --
                    if (getgenv().Void.Aiming.Silentbot.RotateChar == true) then 
                        Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.lookAt(Players.LocalPlayer.Character.PrimaryPart.Position, Predicted_Pos);
                    end;
                    -------------------------------------
                    -- Self Reloading --
                    if (getgenv().Void.Global.Checks.Reloading == true) then 
                        if (Players.LocalPlayer.Character.BodyEffects ~= nil and Players.LocalPlayer.Character.BodyEffects.Reload.Value == true) then 
                            HOOK_POS = false;
                        end;
                    else
                        HOOK_POS = HOOK_POS;
                    end;
                    -- Grabbing --
                    if (getgenv().Void.Global.Checks.Grabbing == true) then 
                        if (VOID_CONSTRUCTORS.Data.Silent_Target.Character and VOID_CONSTRUCTORS.Data.Silent_Target.Character:FindFirstChild('GRABBING_CONSTRAINT')) then 
                            HOOK_POS = false;
                        end;
                    end;
                    -------------------------------------
                    if (getgenv().Void.Aiming.Silentbot.Strafe.Enabled == true) then
                        VOID_CONSTRUCTORS.Coroutines['SilentStrafe'] = coroutine.wrap(function()
                            local Degree_X = 0;
                            pcall(function()
                                while (true) and (getgenv().Void) and (VOID_CONSTRUCTORS.Booleans.Strafe == true) do
                                    Degree_X += 1;
                                    if (Degree_X >= 360) then 
                                        Degree_X = 0;
                                    end;
                                    if (Players.LocalPlayer ~= nil and Players.LocalPlayer.Character ~= nil and Players.LocalPlayer.Character.PrimaryPart and VOID_CONSTRUCTORS.Data.Silent_Target ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart ~= nil) then 
                                        Players.LocalPlayer.Character.PrimaryPart.CFrame = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame + getgenv().Void.Aiming.Silentbot.Strafe.Do360 == true and Vector3.new(Degree_X, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Y, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Z) or Vector3.new(getgenv().Void.Aiming.Silentbot.Strafe.Offset.X, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Y, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Z);
                                    end;
                                    task.wait(1 / getgenv().Void.Aiming.Silentbot.Strafe.Speed); -- 1 Second / Speed = 1 / 5 = 0.20;
                                end;
                            end);
                        end);
                        VOID_CONSTRUCTORS.Coroutines['SilentStrafe']();
                    end;
                    -------------------------------------
                    if (HOOK_POS == true) then 
                        return CFrame.new(Predicted_Pos);
                    end;
                end;
            elseif (getgenv().Void.Aiming.Silentbot.HitChance.Enabled == false) and (VOID_CONSTRUCTORS.Data.Silent_Target) and (VOID_CONSTRUCTORS.Booleans.Silent == true) then
                ----------------------------------------
                     -- Resolver --
                     if (getgenv().Void.Aiming.Silentbot.AutomaticResolver == true) then 
                        if (VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.X >= 35 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Y >= 20 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Z >= 35 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.X <= -30 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Y <= -25 or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Velocity.Z <= -30) then 
                            Resolver = true;
                        end;
                    end;
                    ----------------------------------------
                    coroutine.wrap(function()
                        if (VOID_CONSTRUCTORS.Data.Silent_Target) and (VOID_CONSTRUCTORS.Data.Silent_Target ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character) then 
                            pcall(function()
                                Data.Positions.Last = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Position;
                                Data.Time.Last = tick();
                                ---------------------------------------
                                wait(0.00350);
                                ---------------------------------------
                                Data.Positions.Current = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.Position;
                                Data.Time.Current = tick();
                            end);
                        end;
                    end)();
                    ----------------------------------------
                    local SelectedPart = (
                        getgenv().Void.Aiming.Silentbot.Hitting == 0 and GetNearestPoint(VOID_CONSTRUCTORS.Data.Silent_Target.Character) or
                        getgenv().Void.Aiming.Silentbot.Hitting == 1 and VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart or
                        getgenv().Void.Aiming.Silentbot.Hitting == 2 and VOID_CONSTRUCTORS.Data.Silent_Target.Character[getgenv().Void.Aiming.Silentbot.BasePart] or
                        getgenv().Void.Aiming.Silentbot.Hitting == 3 and VOID_CONSTRUCTORS.Data.Silent_Target.Character:children()[math.random(1, #VOID_CONSTRUCTORS.Data.Silent_Target.Character:children())] or
                        VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart
                    ) or VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart or VOID_CONSTRUCTORS.Data.Silent_Target.Character.HumanoidRootPart;
                    if (Resolver == true) then
                        SelectedPart.Velocity = Vector3.new(
                            -- X Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).X
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).X
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).X
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Y Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Y
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Y
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Y
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Z Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Z
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Z
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Z
                                or
                                -- V ?
                                0
                                
                            )
                        );
                        SelectedPart.AssemblyLinearVelocity = Vector3.new(
                            -- X Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).X
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).X
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).X
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Y Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Y
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Y
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Y
                                or
                                -- V ?
                                0
                                
                            ),
                            -- Z Axis
                            0 + (
                                -- V1
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v1' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.MoveDirection * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.25, 2) or getgenv().Void.Aiming.Silentbot.Resolver.MoveDirection).Z
                                or
                                -- V2
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v2' and ((VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame.LookVector * VOID_CONSTRUCTORS.Data.Silent_Target.Character.Humanoid.WalkSpeed) * getgenv().Void.Aiming.Silentbot.Resolver.AutomaticPred == true and math.random(1.15, 2) or getgenv().Void.Aiming.Silentbot.Resolver.LookVector).Z
                                or
                                -- V3
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v3' and 0
                                or
                                -- V4
                                tostring(getgenv().Void.Aiming.Silentbot.ResolverMethod):lower() == 'v4' and ( (Data.Positions.Current - Data.Positions.Last) / ( (Data.Time.Last - Data.Time.Current) + getgenv().Void.Aiming.Silentbot.Resolver.Delta / 100) ).Z
                                or
                                -- V ?
                                0
                                
                            )
                        );
                    end;
                    -- Predicted Pos --
                    local MissChanceGen = function(Percentage) 
                        return math.random() <= (Percentage / 100);
                    end;
                    if (getgenv().Void.Aiming.Silentbot.Miss.Enabled == true) then 
                        local Miss = MissChanceGen(getgenv().Void.Aiming.Silentbot.Miss.Chance);
                        if (Miss == true) then 
                            SelectedPart.Velocity += Vector3.new(
                                -- X Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.X[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.X[2]),
                                -- Y Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.Y[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.Y[2]),
                                -- Z Axis
                                math.random(getgenv().Void.Aiming.Silentbot.Miss.Intensity.Z[1], getgenv().Void.Aiming.Silentbot.Miss.Intensity.Z[2])
                            );
                        end;
                    end;
    
                    local HOOK_POS = true;
    
                    local Predicted_Pos = SelectedPart.Position + SelectedPart.Velocity * (getgenv().Void.Aiming.Silentbot.Prediction.Enabled == true and getgenv().Void.Aiming.Silentbot.Prediction.Amount or 1);
                    local OnScreenPos = workspace.CurrentCamera:WorldToViewportPoint(Predicted_Pos);
                    OnScreenPos = CFrame.new(OnScreenPos);
                    -- Tracer --
                    VOID_CONSTRUCTORS.Assets['FOV_Tracer'].To = Vector2.new(OnScreenPos.X, OnScreenPos.Y);
                    -- Return & Etc --
                    if (getgenv().Void.Aiming.Silentbot.RotateChar == true) then 
                        Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.lookAt(Players.LocalPlayer.Character.PrimaryPart.Position, Predicted_Pos); -- Since its a vector3
                    end;
                    -------------------------------------
                    -- Self Reloading --
                    if (getgenv().Void.Global.Checks.Reloading == true) then 
                        if (Players.LocalPlayer.Character.BodyEffects ~= nil and Players.LocalPlayer.Character.BodyEffects.Reload.Value == true) then 
                            HOOK_POS = false;
                        end;
                    else
                        HOOK_POS = HOOK_POS;
                    end;
                    -- Grabbing --
                    if (getgenv().Void.Global.Checks.Grabbing == true) then 
                        if (VOID_CONSTRUCTORS.Data.Silent_Target.Character and VOID_CONSTRUCTORS.Data.Silent_Target.Character:FindFirstChild('GRABBING_CONSTRAINT')) then 
                            HOOK_POS = false;
                        end;
                    end;
                    -------------------------------------
                    if (getgenv().Void.Aiming.Silentbot.Strafe.Enabled == true) then
                        VOID_CONSTRUCTORS.Coroutines['SilentStrafe'] = coroutine.wrap(function()
                            local Degree_X = 0;
                            pcall(function()
                                while (true) and (getgenv().Void) and (getgenv().Void.Aiming.Silentbot.Strafe.Enabled == true) do
                                    Degree_X += 1;
                                    if (Degree_X >= 360) then 
                                        Degree_X = 0;
                                    end;
                                    if (Players.LocalPlayer ~= nil and Players.LocalPlayer.Character ~= nil and Players.LocalPlayer.Character.PrimaryPart and VOID_CONSTRUCTORS.Data.Silent_Target ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character ~= nil and VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart ~= nil) then 
                                        Players.LocalPlayer.Character.PrimaryPart.CFrame = VOID_CONSTRUCTORS.Data.Silent_Target.Character.PrimaryPart.CFrame + getgenv().Void.Aiming.Silentbot.Strafe.Do360 == true and Vector3.new(Degree_X, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Y, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Z) or Vector3.new(getgenv().Void.Aiming.Silentbot.Strafe.Offset.X, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Y, getgenv().Void.Aiming.Silentbot.Strafe.Offset.Z);
                                    end;
                                    task.wait(1 / getgenv().Void.Aiming.Silentbot.Strafe.Speed); -- 1 Second / Speed = 1 / 5 = 0.20;
                                end;
                            end);
                        end);
                        VOID_CONSTRUCTORS.Coroutines['SilentStrafe']();
                    end;
                    if (HOOK_POS == true) then 
                        return CFrame.new(Predicted_Pos);
                    end;
            end;
        end;
        return OldIndexFunc(self, idx);
    end);
    setreadonly(GameMT, true);
end)();
