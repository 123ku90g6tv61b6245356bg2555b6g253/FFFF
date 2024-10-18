local Decode = (syn and syn.crypt.base64.decode) or (crypt and crypt.base64decode) or base64_decode;
local Library = {
    Open = true;
    Relations = {};
    Folders = {
        main = "alysum";
        configs = "alysum/Configs";
    };
    Pages = {};
    Sections = {};
    Flags = {};
    UnNamedFlags = 0;
    Objects = {};
    ThemeObjects = {Objects = {}; Outlines = {}};
    Text = {};
    Themes = {
        ["Default"] = {["Accent"] = Color3.fromRGB(121, 68, 155);["Border1"] = Color3.fromRGB(10, 10, 10);["Border2"] = Color3.fromRGB(45, 45, 45);["Light Contrast"] = Color3.fromRGB(30, 30, 30);["Dark Contrast"] = Color3.fromRGB(20, 20, 20);["Text"] = Color3.fromRGB(175,175,175);["Light Text"] = Color3.fromRGB(255, 255, 255);};
        ["Old"] = {["Accent"] = Color3.fromRGB(93, 62, 152);["Border1"] = Color3.fromRGB(0,0,0);["Border2"] = Color3.fromRGB(50,50,50);["Light Contrast"] = Color3.fromRGB(30,30,30);["Dark Contrast"] = Color3.fromRGB(24,24,24);["Text"] = Color3.fromRGB(175,175,175);["Light Text"] = Color3.fromRGB(255,255,255);};
        ["Entrophy"] = {["Accent"] = Color3.fromRGB(129, 187, 233);["Border1"] = Color3.fromRGB(10, 10, 10);["Border2"] = Color3.fromRGB(76, 74, 82);["Light Contrast"] = Color3.fromRGB(61, 58, 67);["Dark Contrast"] = Color3.fromRGB(48, 47, 55);["Text"] = Color3.fromRGB(175,175,175);["Light Text"] = Color3.fromRGB(220, 220, 220);};
        ["Fatality"] = {["Accent"] = Color3.fromRGB(240, 15, 80);["Border1"] = Color3.fromRGB(15, 15, 40);["Border2"] = Color3.fromRGB(50, 40, 80);["Light Contrast"] = Color3.fromRGB(35, 25, 70);["Dark Contrast"] = Color3.fromRGB(25, 20, 50);["Text"] = Color3.fromRGB(175,175,175);["Light Text"] = Color3.fromRGB(200, 200, 255);};
    };
    Images = {
        ["Arrow_Down"] = Decode("iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsIAAA7CARUoSoAAAABoSURBVDhP7dBBCsAgDETR6LHs/XutNtMxi4BI1Cz7oFQw+QvLoyRR7f80CF48niuq6nfrOSPqG/qUDe+5qfWMhwveLxnHDAY4FzKPGQxyfioWM1jg3tBazGCR+85ezCDAzucs9gsQeQHFvhGzmKvF1QAAAABJRU5ErkJggg==");
        ["Arrow_Up"] = Decode("iVBORw0KGgoAAAANSUhEUgAAABQAAAALCAYAAAB/Ca1DAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABYSURBVDhPxc7RDsAQDIXh9v0feoYe2eipbST7LyiSL+SXDsuOYWo7rYf0zEa38JH9KkLpA8MQQ93LGYY8dLh4iqEevR3eYuiKtuErhoCWZRVDGdVdWE0kAV2EK/50sUCyAAAAAElFTkSuQmCC");
    };
    AllowedCharacters = {
        [1] = ' ',
        [2] = '!',
        [3] = '"',
        [4] = '#',
        [5] = '$',
        [6] = '%',
        [7] = '&',
        [8] = "'",
        [9] = '(',
        [10] = ')',
        [11] = '*',
        [12] = '+',
        [13] = ',',
        [14] = '-',
        [15] = '.',
        [16] = '/',
        [17] = '0',
        [18] = '1',
        [19] = '2',
        [20] = '3',
        [21] = '4',
        [22] = '5',
        [23] = '6',
        [24] = '7',
        [25] = '8',
        [26] = '9',
        [27] = ':',
        [28] = ';',
        [29] = '<',
        [30] = '=',
        [31] = '>',
        [32] = '?',
        [33] = '@',
        [34] = 'A',
        [35] = 'B',
        [36] = 'C',
        [37] = 'D',
        [38] = 'E',
        [39] = 'F',
        [40] = 'G',
        [41] = 'H',
        [42] = 'I',
        [43] = 'J',
        [44] = 'K',
        [45] = 'L',
        [46] = 'M',
        [47] = 'N',
        [48] = 'O',
        [49] = 'P',
        [50] = 'Q',
        [51] = 'R',
        [52] = 'S',
        [53] = 'T',
        [54] = 'U',
        [55] = 'V',
        [56] = 'W',
        [57] = 'X',
        [58] = 'Y',
        [59] = 'Z',
        [60] = '[',
        [61] = "\\",
        [62] = ']',
        [63] = '^',
        [64] = '_',
        [65] = '`',
        [66] = 'a',
        [67] = 'b',
        [68] = 'c',
        [69] = 'd',
        [70] = 'e',
        [71] = 'f',
        [72] = 'g',
        [73] = 'h',
        [74] = 'i',
        [75] = 'j',
        [76] = 'k',
        [77] = 'l',
        [78] = 'm',
        [79] = 'n',
        [80] = 'o',
        [81] = 'p',
        [82] = 'q',
        [83] = 'r',
        [84] = 's',
        [85] = 't',
        [86] = 'u',
        [87] = 'v',
        [88] = 'w',
        [89] = 'x',
        [90] = 'y',
        [91] = 'z',
        [92] = '{',
        [93] = '|',
        [94] = '}',
        [95] = '~'
    };
    ShiftCharacters = {
        ["1"] = "!",
        ["2"] = "@",
        ["3"] = "#",
        ["4"] = "$",
        ["5"] = "%",
        ["6"] = "^",
        ["7"] = "&",
        ["8"] = "*",
        ["9"] = "(",
        ["0"] = ")",
        ["-"] = "_",
        ["="] = "+",
        ["["] = "{",
        ["\\"] = "|",
        [";"] = ":",
        ["'"] = "\"",
        [","] = "<",
        ["."] = ">",
        ["/"] = "?",
        ["`"] = "~"
    };
    Keys = {
        [Enum.KeyCode.LeftShift] = "LS",
        [Enum.KeyCode.RightShift] = "RS",
        [Enum.KeyCode.LeftControl] = "LC",
        [Enum.KeyCode.RightControl] = "RC",
        [Enum.KeyCode.LeftAlt] = "LA",
        [Enum.KeyCode.RightAlt] = "RA",
        [Enum.KeyCode.CapsLock] = "CAPS",
        [Enum.KeyCode.One] = "1",
        [Enum.KeyCode.Two] = "2",
        [Enum.KeyCode.Three] = "3",
        [Enum.KeyCode.Four] = "4",
        [Enum.KeyCode.Five] = "5",
        [Enum.KeyCode.Six] = "6",
        [Enum.KeyCode.Seven] = "7",
        [Enum.KeyCode.Eight] = "8",
        [Enum.KeyCode.Nine] = "9",
        [Enum.KeyCode.Zero] = "0",
        [Enum.KeyCode.KeypadOne] = "Num1",
        [Enum.KeyCode.KeypadTwo] = "Num2",
        [Enum.KeyCode.KeypadThree] = "Num3",
        [Enum.KeyCode.KeypadFour] = "Num4",
        [Enum.KeyCode.KeypadFive] = "Num5",
        [Enum.KeyCode.KeypadSix] = "Num6",
        [Enum.KeyCode.KeypadSeven] = "Num7",
        [Enum.KeyCode.KeypadEight] = "Num8",
        [Enum.KeyCode.KeypadNine] = "Num9",
        [Enum.KeyCode.KeypadZero] = "Num0",
        [Enum.KeyCode.Minus] = "-",
        [Enum.KeyCode.Equals] = "=",
        [Enum.KeyCode.Tilde] = "~",
        [Enum.KeyCode.LeftBracket] = "[",
        [Enum.KeyCode.RightBracket] = "]",
        [Enum.KeyCode.RightParenthesis] = ")",
        [Enum.KeyCode.LeftParenthesis] = "(",
        [Enum.KeyCode.Semicolon] = ",",
        [Enum.KeyCode.Quote] = "'",
        [Enum.KeyCode.BackSlash] = "\\",
        [Enum.KeyCode.Comma] = ",",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Slash] = "/",
        [Enum.KeyCode.Asterisk] = "*",
        [Enum.KeyCode.Plus] = "+",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Backquote] = "`",
        [Enum.UserInputType.MouseButton1] = "MB1",
        [Enum.UserInputType.MouseButton2] = "MB2",
        [Enum.UserInputType.MouseButton3] = "MB3"
    };
    Window = nil;
    Cursor = nil;
    CursorOutline = nil;
};

-- // Folders
for i,v in pairs(Library.Folders) do
    makefolder(v)
end
-- // Ignores
local Flags = {}; -- Ignore
local Dropdowns = {}; -- Ignore
local Icons = {}; -- Ignore
local Pickers = {}; -- Ignore
Library.Theme = table.clone(Library.Themes["Old"]);

local old_drawing = Drawing;

if not LPH_OBFUSCATED then
    LPH_CRASH = function() while true do end end
    LPH_ENCNUM = function(n) return n end
    LPH_ENCSTR = function(s) return s end
    LPH_JIT = function(f) return f end
    LPH_NO_VIRTUALIZE = function(f) return f end
    LPH_NO_UPVALUES = function(f) return f end
end

if cleardrawcache then
    cleardrawcache()
end

local env = getgenv and getgenv() or _G
local cloneref = function(v) return v end
local clonefunction = function(v) return v end

-- // Variables
local TextService = cloneref(game:GetService("TextService"))
local HttpService = cloneref(game:GetService("HttpService"))

local HttpGet = clonefunction(game.HttpGet)
local GetTextBoundsAsync = clonefunction(TextService.GetTextBoundsAsync)

local floor = clonefunction(math.floor)
local atan2 = clonefunction(math.atan2)
local clamp = clonefunction(math.clamp)
local max = clonefunction(math.max)
local huge = math.huge
local pi = math.pi

local udim2New = clonefunction(UDim2.new)
local fromOffset = clonefunction(UDim2.fromOffset)

local vector2New = clonefunction(Vector2.new)
local vectorZero = Vector2.zero

local color3New = clonefunction(Color3.new)

-- // Drawing
local Drawing = {}

Drawing.__CLASSES = {}
Drawing.__OBJECT_CACHE = {}
Drawing.__IMAGE_CACHE = {}

Drawing.Font = {
    Count = 0,
    Fonts = {},
    Enums = {}
}

function Drawing.new(class)
    if not Drawing.__CLASSES[class] then
        error(`Invalid argument #1, expected a valid drawing type`, 2)
    end

    return Drawing.__CLASSES[class].new()
end

function Drawing.Font.new(FontName, FontData)

    local FontID = Drawing.Font.Count+1
    local FontObject

    Drawing.Font.Count += 1
    Drawing.Font.Fonts[FontName] = FontID

    if typeof(FontData) == "Font" then
        FontObject = FontData
    elseif string.sub(FontData, 1, 11) == "rbxasset://" then
        FontObject = Font.new(FontData, Enum.FontWeight.Regular)
    else
        local TempPath = HttpService:GenerateGUID(false)

        if not isfile(FontData) then
            writefile(`DrawingFontCache/{FontName}.ttf`, crypt.base64.decode(FontData))
            FontData = `DrawingFontCache/{FontName}.ttf`
        end
    
        writefile(TempPath, HttpService:JSONEncode({
            ["name"] = FontName,
            ["faces"] = {
                {
                    ["name"] = "Regular",
                    ["weight"] = 100,
                    ["style"] = "normal",
                    ["assetId"] = getcustomasset(FontData)
                }
            }
        }))

        FontObject = Font.new(getcustomasset(TempPath), Enum.FontWeight.Regular, Enum.FontStyle.Normal)

        delfile(TempPath)
    end

    if not FontObject then
        error("Internal Error while creating new font.", 2)
    end

    Drawing.__TEXT_BOUND_PARAMS.Text = "Text"
    Drawing.__TEXT_BOUND_PARAMS.Size = 12
    Drawing.__TEXT_BOUND_PARAMS.Font = FontObject
    Drawing.__TEXT_BOUND_PARAMS.Width = huge

    GetTextBoundsAsync(TextService, Drawing.__TEXT_BOUND_PARAMS) -- Preload/Cache font for GetTextBoundsAsync to avoid yielding across metamethods

    Drawing.Font.Enums[FontID] = FontObject

    return FontObject
end

function Drawing.CreateInstance(class, properties, children)
    local object = Instance.new(class)

    for property, value in properties or {} do
        object[property] = value
    end

    for idx, child in children or {} do
        child.Parent = object
    end

    return object
end

function Drawing.ClearCache()
    for idx, object in Drawing.__OBJECT_CACHE do
        if rawget(object, "__OBJECT_EXISTS") then
            object:Remove()
        end
    end
    Drawing.__ROOT:Destroy()
end

function Drawing.UpdatePosition(object, from, to, thickness)
    local center = (from + to) / 2
    local offset = to - from
    local a = floor(thickness/2)
    object.Position = fromOffset(center.X + a, center.Y + a)
    object.Size = fromOffset(offset.Magnitude, thickness)
    object.Rotation = atan2(offset.Y, offset.X) * 180 / pi
end

Drawing.__ROOT = Drawing.CreateInstance("ScreenGui", {
    IgnoreGuiInset = true,
    DisplayOrder = 10,
    Name = HttpService:GenerateGUID(false),
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    Parent = gethui()
})

Drawing.__TEXT_BOUND_PARAMS = Drawing.CreateInstance("GetTextBoundsParams", { Width = huge })

--#region Line
local Line = {}

Drawing.__CLASSES["Line"] = Line

function Line.new()
    local LineObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            From = vectorZero,
            To = vectorZero,
            Thickness = 1,
            Transparency = 1,
            ZIndex = 0,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("Frame", {
            AnchorPoint = vector2New(0.5, 0.5),
            BackgroundColor3 = color3New(0, 0, 0),
            Position = udim2New(0, 0, 0, 0),
            Size = udim2New(0, 0, 0, 0),
            BorderSizePixel = 0,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        })
    }, Line)

    table.insert(Drawing.__OBJECT_CACHE, LineObject)

    return LineObject
end

function Line:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Line[property]
end

function Line:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties = self.__PROPERTIES

    Properties[property] = value

    if property == "Color" then
        self.__OBJECT.BackgroundColor3 = value
    elseif property == "From" then
        Drawing.UpdatePosition(self.__OBJECT, Properties.From, Properties.To, Properties.Thickness)
    elseif property == "To" then
        Drawing.UpdatePosition(self.__OBJECT, Properties.From, Properties.To, Properties.Thickness)
    elseif property == "Thickness" then
        self.__OBJECT.Size = fromOffset(self.__OBJECT.AbsoluteSize.X, max(value, 1))
    elseif property == "Transparency" then
        self.__OBJECT.Transparency = clamp(1 - value, 0, 1)
    elseif property == "Visible" then
        self.__OBJECT.Visible = value
    elseif property == "ZIndex" then
        self.__OBJECT.ZIndex = value
    end
end

function Line:__iter()
    return next, self.__PROPERTIES
end

function Line:__tostring()
    return "Drawing"
end

function Line:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Line:Destroy()
    self:Remove()
end
--#endregion

--#region Circle
local Circle = {}

Drawing.__CLASSES["Circle"] = Circle

function Circle.new()
    local CircleObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            Position = vector2New(0, 0),
            NumSides = 0,
            Radius = 0,
            Thickness = 1,
            Transparency = 1,
            ZIndex = 0,
            Filled = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("Frame", {
            AnchorPoint = vector2New(0.5, 0.5),
            BackgroundColor3 = color3New(0, 0, 0),
            Position = udim2New(0, 0, 0, 0),
            Size = udim2New(0, 0, 0, 0),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("UICorner", {
                Name = "_CORNER",
                CornerRadius = UDim.new(1, 0)
            }),
            Drawing.CreateInstance("UIStroke", {
                Name = "_STROKE",
                Color = color3New(0, 0, 0),
                Thickness = 1
            })
        }),
    }, Circle)

    table.insert(Drawing.__OBJECT_CACHE, CircleObject)

    return CircleObject
end

function Circle:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Circle[property]
end

function Circle:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties = self.__PROPERTIES

    Properties[property] = value

    if property == "Color" then
        self.__OBJECT.BackgroundColor3 = value
        self.__OBJECT._STROKE.Color = value
    elseif property == "Filled" then
        self.__OBJECT.BackgroundTransparency = value and 1 - Properties.Transparency or 1
    elseif property == "Position" then
        self.__OBJECT.Position = fromOffset(value.X, value.Y)
    elseif property == "Radius" then
        self:__UPDATE_RADIUS()
    elseif property == "Thickness" then
        self:__UPDATE_RADIUS()
    elseif property == "Transparency" then
        self.__OBJECT._STROKE.Transparency = clamp(1 - value, 0, 1)
        self.__OBJECT.Transparency = Properties.Filled and clamp(1 - value, 0, 1) or self.__OBJECT.Transparency
    elseif property == "Visible" then
        self.__OBJECT.Visible = value
    elseif property == "ZIndex" then
        self.__OBJECT.ZIndex = value
    end
end

function Circle:__iter()
    return next, self.__PROPERTIES
end

function Circle:__tostring()
    return "Drawing"
end

function Circle:__UPDATE_RADIUS()
    local diameter = (self.__PROPERTIES.Radius * 2) - (self.__PROPERTIES.Thickness * 2)
    self.__OBJECT.Size = fromOffset(diameter, diameter)
end

function Circle:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Circle:Destroy()
    self:Remove()
end
--#endregion

--#region Text
local Text = {}

Drawing.__CLASSES["Text"] = Text

function Text.new()
    local TextObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(1, 1, 1),
            OutlineColor = color3New(0, 0, 0),
            Position = vector2New(0, 0),
            TextBounds = vector2New(0, 0),
            Text = "",
            Font = Drawing.Font.Enums[1],
            Size = 9,
            Transparency = 1,
            ZIndex = 0,
            Center = false,
            Outline = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("TextLabel", {
            TextColor3 = color3New(1, 1, 1),
            Position = udim2New(0, 0, 0, 0),
            Size = udim2New(0, 0, 0, 0),
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            FontFace = Drawing.Font.Enums[1],
            TextSize = 12,
            BackgroundTransparency = 1,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("UIStroke", {
                Name = "_STROKE",
                Color = color3New(0, 0, 0),
                LineJoinMode = Enum.LineJoinMode.Miter,
                Enabled = false,
                Thickness = 1
            })
        })
    }, Text)

    table.insert(Drawing.__OBJECT_CACHE, TextObject)

    return TextObject
end

function Text:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Text[property]
end

function Text:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    if value == "TextBounds" then
        error("Attempt to modify read-only property", 2)
    end

    local Properties = self.__PROPERTIES

    Properties[property] = value

    if property == "Color" then
        self.__OBJECT.TextColor3 = value
    elseif property == "Position" then
        self.__OBJECT.Position = fromOffset(value.X, value.Y + 3)
    elseif property == "Size" then
        self.__OBJECT.TextSize = value
        self:_UPDATE_TEXT_BOUNDS()
    elseif property == "Text" then
        self.__OBJECT.Text = value
        self:_UPDATE_TEXT_BOUNDS()
    elseif property == "Font" then
        if type(value) == "string" then
            value = Drawing.Font.Enums[Drawing.Font.Fonts[value]]
        elseif type(value) == "number" then
            value = Drawing.Font.Enums[value]
        end

        Properties.Font = value

        self.__OBJECT.FontFace = value
        self:_UPDATE_TEXT_BOUNDS()
    elseif property == "Outline" then
        self.__OBJECT._STROKE.Enabled = value
    elseif property == "OutlineColor" then
        self.__OBJECT._STROKE.Color = value
    elseif property == "Center" then
        self.__OBJECT.TextXAlignment = value and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
    elseif property == "Transparency" then
        local value = clamp(1 - value, 0, 1)
        local object = self.__OBJECT
        object.Transparency = value
        object._STROKE.Transparency = value
    elseif property == "Visible" then
        self.__OBJECT.Visible = value
    elseif property == "ZIndex" then
        self.__OBJECT.ZIndex = value
    end
end

function Text:__iter()
    return next, self.__PROPERTIES
end

function Text:__tostring()
    return "Drawing"
end

function Text:_UPDATE_TEXT_BOUNDS()
    local Properties = self.__PROPERTIES

    Drawing.__TEXT_BOUND_PARAMS.Text = Properties.Text
    Drawing.__TEXT_BOUND_PARAMS.Size = Properties.Size
    Drawing.__TEXT_BOUND_PARAMS.Font = Properties.Font
    Drawing.__TEXT_BOUND_PARAMS.Width = huge

    Properties.TextBounds = GetTextBoundsAsync(TextService, Drawing.__TEXT_BOUND_PARAMS)
end

function Text:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Text:Destroy()
    self:Remove()
end
--#endregion

--#region Square
local Square = {}

Drawing.__CLASSES["Square"] = Square

function Square.new()
    local SquareObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            Position = vector2New(0, 0),
            Size = vector2New(0, 0),
            Rounding = 0,
            Thickness = 0,
            Transparency = 1,
            ZIndex = 0,
            Filled = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("Frame", {
            Position = udim2New(0, 0, 0, 0),
            Size = udim2New(0, 0, 0, 0),
            BackgroundColor3 = color3New(0, 0, 0),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("UIStroke", {
                Name = "_STROKE",
                Color = Color3.new(0, 0, 0),
                LineJoinMode = Enum.LineJoinMode.Miter,
                Thickness = 1
            })
        })
    }, Square)

    table.insert(Drawing.__OBJECT_CACHE, SquareObject)

    return SquareObject
end

function Square:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Square[property]
end

function Square:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties = self.__PROPERTIES

    Properties[property] = value

    if property == "Color" then
        self.__OBJECT.BackgroundColor3 = value
        self.__OBJECT._STROKE.Color = value
    elseif property == "Position" then
        self:__UPDATE_SCALE()
    elseif property == "Size" then
        self:__UPDATE_SCALE()
    elseif property == "Thickness" then
        self.__OBJECT._STROKE.Thickness = value
        self.__OBJECT._STROKE.Enabled = not Properties.Filled
        self:__UPDATE_SCALE()
    elseif property == "Filled" then
        self.__OBJECT._STROKE.Enabled = not value
        self.__OBJECT.BackgroundTransparency = value and 1 - Properties.Transparency or 1
    elseif property == "Transparency" then
        local value = -value + 1
        self.__OBJECT.Transparency = Properties.Filled and value or 1
        self.__OBJECT._STROKE.Transparency = value
    elseif property == "Visible" then
        self.__OBJECT.Visible = value
    elseif property == "ZIndex" then
        self.__OBJECT.ZIndex = value
    end
end

function Square:__iter()
    return next, self.__PROPERTIES
end

function Square:__tostring()
    return "Drawing"
end

function Square:__UPDATE_SCALE()
    local Properties = self.__PROPERTIES

    self.__OBJECT.Position = fromOffset(Properties.Position.X, Properties.Position.Y)
    self.__OBJECT.Size = fromOffset(Properties.Size.X, Properties.Size.Y)
end

function Square:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Square:Destroy()
    self:Remove()
end
--#endregion

--#region Image
local Image = {}

Drawing.__CLASSES["Image"] = Image

function Image.new()
    local ImageObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            Position = vector2New(0, 0),
            Size = vector2New(0, 0),
            Data = "",
            Uri = "",
            Thickness = 0,
            Transparency = 1,
            ZIndex = 0,
            Filled = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("ImageLabel", {
            Position = udim2New(0, 0, 0, 0),
            Size = udim2New(0, 0, 0, 0),
            BackgroundColor3 = color3New(0, 0, 0),
            Image = "",
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("UICorner", {
                Name = "_CORNER",
                CornerRadius = UDim.new(0, 0)
            })
        })
    }, Image)

    table.insert(Drawing.__OBJECT_CACHE, ImageObject)

    return ImageObject
end

function Image:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Image[property]
end

function Image:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties = self.__PROPERTIES

    Properties[property] = value

    if property == "Data" then
        self:__SET_IMAGE(value)
    elseif property == "Uri" then
        self:__SET_IMAGE(value, true)
    elseif property == "Rounding" then
        self.__OBJECT._CORNER.CornerRadius = UDim.new(0, value)
    elseif property == "Color" then
        self.__OBJECT.ImageColor3 = value
    elseif property == "Position" then
        self.__OBJECT.Position = fromOffset(value.X, value.Y)
    elseif property == "Size" then
        self.__OBJECT.Size = fromOffset(value.X, value.Y)
    elseif property == "Transparency" then
        self.__OBJECT.ImageTransparency = clamp(1 - value, 0, 1)
    elseif property == "Visible" then
        self.__OBJECT.Visible = value
    elseif property == "ZIndex" then
        self.__OBJECT.ZIndex = value
    end
end

function Image:__iter()
    return next, self.__PROPERTIES
end

function Image:__tostring()
    return "Drawing"
end

function Image:__SET_IMAGE(data, isUri)
    task.spawn(function()
        if isUri then
            data = HttpGet(game, data, true)
        end

        if not Drawing.__IMAGE_CACHE[data] then
            local TempPath = HttpService:GenerateGUID(false)

            writefile(TempPath, data)
            Drawing.__IMAGE_CACHE[data] = getcustomasset(TempPath)
            delfile(TempPath)
        end

        self.__PROPERTIES.Data = Drawing.__IMAGE_CACHE[data]
        self.__OBJECT.Image = Drawing.__IMAGE_CACHE[data]
    end)
end

function Image:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Image:Destroy()
    self:Remove()
end
--#endregion

--#region Triangle
local Triangle = {}

Drawing.__CLASSES["Triangle"] = Triangle

function Triangle.new()
    local TriangleObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            PointA = vector2New(0, 0),
            PointB = vector2New(0, 0),
            PointC = vector2New(0, 0),
            Thickness = 1,
            Transparency = 1,
            ZIndex = 0,
            Filled = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("Frame", {
            Size = udim2New(1, 0, 1, 0),
            BackgroundTransparency = 1,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("Frame", {
                Name = "_A",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            }),
            Drawing.CreateInstance("Frame", {
                Name = "_B",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            }),
            Drawing.CreateInstance("Frame", {
                Name = "_C",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            })
        })
    }, Triangle)

    table.insert(Drawing.__OBJECT_CACHE, TriangleObject)

    return TriangleObject
end

function Triangle:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Triangle[property]
end

function Triangle:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties, Object = self.__PROPERTIES, self.__OBJECT

    Properties[property] = value

    if property == "Color" then
        Object._A.BackgroundColor3 = value
        Object._B.BackgroundColor3 = value
        Object._C.BackgroundColor3 = value
    elseif property == "Transparency" then
        Object._A.BackgroundTransparency = 1 - values
        Object._B.BackgroundTransparency = 1 - values
        Object._C.BackgroundTransparency = 1 - values
    elseif property == "Thickness" then
        Object._A.BackgroundColor3 = fromOffset(Object._A.AbsoluteSize.X, max(value, 1));
        Object._B.BackgroundColor3 = fromOffset(Object._B.AbsoluteSize.X, max(value, 1));
        Object._C.BackgroundColor3 = fromOffset(Object._C.AbsoluteSize.X, max(value, 1));
    elseif property == "PointA" then
        self:__UPDATE_VERTICIES({
            { Object._A, Properties.PointA, Properties.PointB },
            { Object._C, Properties.PointC, Properties.PointA }
        })
    elseif property == "PointB" then
        self:__UPDATE_VERTICIES({
            { Object._A, Properties.PointA, Properties.PointB },
            { Object._B, Properties.PointB, Properties.PointC }
        })
    elseif property == "PointC" then
        self:__UPDATE_VERTICIES({
            { Object._B, Properties.PointB, Properties.PointC },
            { Object._C, Properties.PointC, Properties.PointA }
        })
    elseif property == "Visible" then
        Object.Visible = value
    elseif property == "ZIndex" then
        Object.ZIndex = value
    end
end

function Triangle:__iter()
    return next, self.__PROPERTIES
end

function Triangle:__tostring()
    return "Drawing"
end

function Triangle:__UPDATE_VERTICIES(verticies)
    local thickness = self.__PROPERTIES.Thickness

    for idx, verticy in verticies do
        Drawing.UpdatePosition(verticy[1], verticy[2], verticy[3], thickness)
    end
end

function Triangle:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Triangle:Destroy()
    self:Remove()
end
--#endregion

--#region Quad
local Quad = {}

Drawing.__CLASSES["Quad"] = Quad

function Quad.new()
    local QuadObject = setmetatable({
        __OBJECT_EXISTS = true,
        __PROPERTIES = {
            Color = color3New(0, 0, 0),
            PointA = vector2New(0, 0),
            PointB = vector2New(0, 0),
            PointC = vector2New(0, 0),
            PointD = vector2New(0, 0),
            Thickness = 1,
            Transparency = 1,
            ZIndex = 0,
            Filled = false,
            Visible = false
        },
        __OBJECT = Drawing.CreateInstance("Frame", {
            Size = udim2New(1, 0, 1, 0),
            BackgroundTransparency = 1,
            ZIndex = 0,
            Visible = false,
            Parent = Drawing.__ROOT
        }, {
            Drawing.CreateInstance("Frame", {
                Name = "_A",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            }),
            Drawing.CreateInstance("Frame", {
                Name = "_B",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            }),
            Drawing.CreateInstance("Frame", {
                Name = "_C",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            }),
            Drawing.CreateInstance("Frame", {
                Name = "_D",
                Position = udim2New(0, 0, 0, 0),
                Size = udim2New(0, 0, 0, 0),
                AnchorPoint = vector2New(0.5, 0.5),
                BackgroundColor3 = color3New(0, 0, 0),
                BorderSizePixel = 0,
                ZIndex = 0
            })
        })
    }, Quad)

    table.insert(Drawing.__OBJECT_CACHE, QuadObject)

    return QuadObject
end

function Quad:__index(property)
    local value = self.__PROPERTIES[property]

    if value ~= nil then
        return value
    end

    return Quad[property]
end

function Quad:__newindex(property, value)
    if not self.__OBJECT_EXISTS then
        return error("Attempt to modify drawing that no longer exists!", 2)
    end

    local Properties, Object = self.__PROPERTIES, self.__OBJECT

    Properties[property] = value

    if property == "Color" then
        Object._A.BackgroundColor3 = value
        Object._B.BackgroundColor3 = value
        Object._C.BackgroundColor3 = value
        Object._D.BackgroundColor3 = value
    elseif property == "Transparency" then
        Object._A.BackgroundTransparency = 1 - values
        Object._B.BackgroundTransparency = 1 - values
        Object._C.BackgroundTransparency = 1 - values
        Object._D.BackgroundTransparency = 1 - values
    elseif property == "Thickness" then
        Object._A.BackgroundColor3 = fromOffset(Object._A.AbsoluteSize.X, max(value, 1));
        Object._B.BackgroundColor3 = fromOffset(Object._B.AbsoluteSize.X, max(value, 1));
        Object._C.BackgroundColor3 = fromOffset(Object._C.AbsoluteSize.X, max(value, 1));
        Object._D.BackgroundColor3 = fromOffset(Object._D.AbsoluteSize.X, max(value, 1));
    elseif property == "PointA" then
        self:__UPDATE_VERTICIES({
            { Object._A, Properties.PointA, Properties.PointB },
            { Object._D, Properties.PointD, Properties.PointA }
        })
    elseif property == "PointB" then
        self:__UPDATE_VERTICIES({
            { Object._A, Properties.PointA, Properties.PointB },
            { Object._B, Properties.PointB, Properties.PointC }
        })
    elseif property == "PointC" then
        self:__UPDATE_VERTICIES({
            { Object._B, Properties.PointB, Properties.PointC },
            { Object._C, Properties.PointC, Properties.PointD }
        })
    elseif property == "PointD" then
        self:__UPDATE_VERTICIES({
            { Object._C, Properties.PointC, Properties.PointD },
            { Object._D, Properties.PointD, Properties.PointA }
        })
    elseif property == "Visible" then
        Object.Visible = value
    elseif property == "ZIndex" then
        Object.ZIndex = value
    end
end

function Quad:__iter()
    return next, self.__PROPERTIES
end

function Quad:__tostring()
    return "Drawing"
end

function Quad:__UPDATE_VERTICIES(verticies)
    local thickness = self.__PROPERTIES.Thickness

    for idx, verticy in verticies do
        Drawing.UpdatePosition(verticy[1], verticy[2], verticy[3], thickness)
    end
end

function Quad:Remove()
    self.__OBJECT_EXISTS = false
    self.__OBJECT.Destroy(self.__OBJECT)
    table.remove(Drawing.__OBJECT_CACHE, table.find(Drawing.__OBJECT_CACHE, self))
end

function Quad:Destroy()
    self:Remove()
end

if not isfolder("DrawingFontCache") then
    makefolder("DrawingFontCache")
end

local which_font = Drawing.Font.new("ProggyClea", crypt.base64.encode(game:HttpGet("https://github.com/linemaster2/storage/blob/main/proggyclean.ttf?raw=true")));

--// CUSTOM DRAWING
local drawing = {} do
    local services = setmetatable({}, {
        __index = function(self, key)
            if key == "InputService" then
                key = "UserInputService"
            end

            if not rawget(self, key) then
                local service = game:GetService(key)
                rawset(self, service, service)

                return service
            end

            return rawget(self, key)
        end
    })

    -- taken from Nevermore Engine https://github.com/Quenty/NevermoreEngine/tree/main/src

    local HttpService = game:GetService("HttpService")

    local ENABLE_TRACEBACK = false

    local Signal = {}
    Signal.__index = Signal
    Signal.ClassName = "Signal"

    --[=[
        Returns whether a class is a signal
        @param value any
        @return boolean
    ]=]
    function Signal.isSignal(value)
        return type(value) == "table"
            and getmetatable(value) == Signal
    end

    --[=[
        Constructs a new signal.
        @return Signal<T>
    ]=]
    function Signal.new()
        local self = setmetatable({}, Signal)

        self._bindableEvent = Instance.new("BindableEvent")
        self._argMap = {}
        self._source = ENABLE_TRACEBACK and debug.traceback() or ""

        -- Events in Roblox execute in reverse order as they are stored in a linked list and
        -- new connections are added at the head. This event will be at the tail of the list to
        -- clean up memory.
        self._bindableEvent.Event:Connect(function(key)
            self._argMap[key] = nil

            -- We've been destroyed here and there's nothing left in flight.
            -- Let's remove the argmap too.
            -- This code may be slower than leaving this table allocated.
            if (not self._bindableEvent) and (not next(self._argMap)) then
                self._argMap = nil
            end
        end)

        return self
    end

    --[=[
        Fire the event with the given arguments. All handlers will be invoked. Handlers follow
        @param ... T -- Variable arguments to pass to handler
    ]=]
    function Signal:Fire(...)
        if not self._bindableEvent then
            warn(("Signal is already destroyed. %s"):format(self._source))
            return
        end

        local args = table.pack(...)

        -- TODO: Replace with a less memory/computationally expensive key generation scheme
        local key = HttpService:GenerateGUID(false)
        self._argMap[key] = args

        -- Queues each handler onto the queue.
        self._bindableEvent:Fire(key)
    end

    --[=[
        Connect a new handler to the event. Returns a connection object that can be disconnected.
        @param handler (... T) -> () -- Function handler called when `:Fire(...)` is called
        @return RBXScriptConnection
    ]=]
    function Signal:Connect(handler)
        if not (type(handler) == "function") then
            error(("connect(%s)"):format(typeof(handler)), 2)
        end

        return self._bindableEvent.Event:Connect(function(key)
            -- note we could queue multiple events here, but we'll do this just as Roblox events expect
            -- to behave.

            local args = self._argMap[key]
            if args then
                handler(table.unpack(args, 1, args.n))
            else
                error("Missing arg data, probably due to reentrance.")
            end
        end)
    end

    --[=[
        Wait for fire to be called, and return the arguments it was given.
        @yields
        @return T
    ]=]
    function Signal:Wait()
        local key = self._bindableEvent.Event:Wait()
        local args = self._argMap[key]
        if args then
            return table.unpack(args, 1, args.n)
        else
            error("Missing arg data, probably due to reentrance.")
            return nil
        end
    end

    --[=[
        Disconnects all connected events to the signal. Voids the signal as unusable.
        Sets the metatable to nil.
    ]=]
    function Signal:Destroy()
        if self._bindableEvent then
            -- This should disconnect all events, but in-flight events should still be
            -- executed.

            self._bindableEvent:Destroy()
            self._bindableEvent = nil
        end

        -- Do not remove the argmap. It will be cleaned up by the cleanup connection.

        setmetatable(self, nil)
    end

    local signal = Signal

    local function ismouseover(obj)
        local posX, posY = obj.Position.X, obj.Position.Y
        local sizeX, sizeY = posX + obj.Size.X, posY + obj.Size.Y
        local mousepos = services.InputService:GetMouseLocation()

        if mousepos.X >= posX and mousepos.Y >= posY and mousepos.X <= sizeX and mousepos.Y <= sizeY then
            return true
        end

        return false
    end

    local function udim2tovector2(udim2, size)
        local scalePart = Vector2.new(udim2.X.Scale * size.X, udim2.Y.Scale * size.Y)
        local offsetPart = Vector2.new(udim2.X.Offset, udim2.Y.Offset)
        return scalePart + offsetPart
    end
    

    -- totally not skidded from devforum (trust)
    local function istouching(pos1, size1, pos2, size2)
        local top = pos2.Y - pos1.Y
        local bottom = pos2.Y + size2.Y - (pos1.Y + size1.Y)
        local left = pos2.X - pos1.X
        local right = pos2.X + size2.X - (pos1.X + size1.X)

        local touching = true

        if top > 0 then
            touching = false
        elseif bottom < 0 then
            touching = false
        elseif left > 0 then
            touching = false
        elseif right < 0 then
            touching = false
        end

        return touching
    end

    local objchildren = {}
    local objmts = {}
    local objvisibles = {}
    local mtobjs = {}
    local udim2posobjs = {}
    local udim2sizeobjs = {}
    local objpositions = {}
    local listobjs = {}
    local listcontents = {}
    local listchildren = {}
    local listadds = {}
    local objpaddings = {}
    local scrollobjs = {}
    local listindexes = {}
    local custompropertysets = {}
    local custompropertygets = {}
    local objconnections = {}
    local objmtchildren = {}
    local scrollpositions = {}
    local currentcanvasposobjs = {}
    local childrenposupdates = {}
    local childrenvisupdates = {}
    local squares = {}
    local objsignals = {}
    local objexists = {}

    local function mouseoverhighersquare(obj)
        for _, square in next, squares do
            if square.Visible == true and square.ZIndex > obj.ZIndex then
                if ismouseover(square) then
                    return true
                end
            end
        end
    end

    services.InputService.InputEnded:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] then
                if signals.inputbegan[input] then
                    signals.inputbegan[input] = false

                    if signals.InputEnded then
                        signals.InputEnded:Fire(input, gpe)
                    end
                end

                if obj.Visible then
                    if ismouseover(obj) then
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and not mouseoverhighersquare(obj) then
                            if signals.MouseButton1Up then
                                signals.MouseButton1Up:Fire()
                            end

                            if signals.mouse1down and signals.MouseButton1Click then
                                signals.mouse1down = false
                                signals.MouseButton1Click:Fire()
                            end
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton2 and not mouseoverhighersquare(obj) then
                            if signals.MouseButton2Clicked then
                                signals.MouseButton2Clicked:Fire()
                            end

                            if signals.MouseButton2Up then
                                signals.MouseButton2Up:Fire()
                            end
                        end
                    end
                end
            end
        end
    end)

    services.InputService.InputChanged:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] and obj.Visible and (signals.MouseEnter or signals.MouseMove or signals.InputChanged or signals.MouseLeave) then
                if ismouseover(obj) then
                    if not signals.mouseentered then
                        signals.mouseentered = true

                        if signals.MouseEnter then
                            signals.MouseEnter:Fire(input.Position)
                        end

                        if signals.MouseMoved then
                            signals.MouseMoved:Fire(input.Position)
                        end
                    end

                    if signals.InputChanged then
                        signals.InputChanged:Fire(input, gpe)
                    end
                elseif signals.mouseentered then
                    signals.mouseentered = false

                    if signals.MouseLeave then
                        signals.MouseLeave:Fire(input.Position)
                    end
                end
            end
        end
    end)

    services.InputService.InputBegan:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] then
                if obj.Visible then
                    if ismouseover(obj) and not mouseoverhighersquare(obj) then
                        signals.inputbegan[input] = true

                        if signals.InputBegan then
                            signals.InputBegan:Fire(input, gpe)
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton1 and (not mouseoverhighersquare(obj) or obj.Transparency == 0) then
                            signals.mouse1down = true

                            if signals.MouseButton1Down then
                                signals.MouseButton1Down:Fire()
                            end
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton2 and (not mouseoverhighersquare(obj) or obj.Transparency == 0) then
                            if signals.MouseButton2Down then
                                signals.MouseButton2Down:Fire()
                            end
                        end
                    end
                end
            end
        end
    end)

    function drawing:new(shape)
        local obj = Drawing.new(shape)
        objexists[obj] = true
        local signalnames = {}

        local listfunc
        local scrollfunc
        local refreshscrolling

        objconnections[obj] = {}

        if shape == "Square" then
            table.insert(squares, obj)

            signalnames = {
                MouseButton1Click = signal.new(),
                MouseButton1Up = signal.new(),
                MouseButton1Down = signal.new(),
                MouseButton2Click = signal.new(),
                MouseButton2Up = signal.new(),
                MouseButton2Down = signal.new(),
                InputBegan = signal.new(),
                InputEnded = signal.new(),
                InputChanged = signal.new(),
                MouseEnter = signal.new(),
                MouseLeave = signal.new(),
                MouseMoved = signal.new()
            }

            local attemptedscrollable = false

            scrollfunc = function(self)
                if listobjs[self] then
                    scrollpositions[self] = 0
                    scrollobjs[self] = true

                    self.ClipsDescendants = true

                    local function scroll(amount)
                        local totalclippedobjs, currentclippedobj, docontinue = 0, nil, false

                        for i, object in next, listchildren[self] do
                            if amount == 1 then
                                if object.Position.Y > mtobjs[self].Position.Y then
                                    if not istouching(object.Position, object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        if not currentclippedobj then
                                            currentclippedobj = object
                                        end

                                        totalclippedobjs = totalclippedobjs + 1
                                        docontinue = true
                                    end
                                end
                            end

                            if amount == -1 then
                                if object.Position.Y <= mtobjs[self].Position.Y then
                                    if not istouching(object.Position, object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        currentclippedobj = object
                                        totalclippedobjs = totalclippedobjs + 1
                                        docontinue = true
                                    end
                                end
                            end
                        end

                        if docontinue then
                            if amount > 0 then
                                local poschange = -(currentclippedobj.Size.Y + objpaddings[self])
                                local closestobj

                                for i, object in next, objchildren[self] do
                                    if istouching(object.Position + Vector2.new(0, poschange), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        closestobj = object
                                        break
                                    end
                                end

                                local diff = (Vector2.new(0, mtobjs[self].Position.Y) - Vector2.new(0, (closestobj.Position.Y + poschange + objpaddings[self]))).magnitude

                                if custompropertygets[mtobjs[self]]("ClipsDescendants") then
                                    for i, object in next, objchildren[self] do
                                        if not istouching(object.Position + Vector2.new(0, poschange - diff + objpaddings[self]), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                            object.Visible = false
                                            childrenvisupdates[objmts[object]](objmts[object], false)
                                        else
                                            object.Visible = true
                                            childrenvisupdates[objmts[object]](objmts[object], true)
                                        end
                                    end
                                end

                                scrollpositions[self] = scrollpositions[self] + (poschange - diff + objpaddings[self])

                                for i, object in next, objchildren[self] do
                                    childrenposupdates[objmts[object]](objmts[object], object.Position + Vector2.new(0, poschange - diff + objpaddings[self]))
                                    object.Position = object.Position + Vector2.new(0, poschange - diff + objpaddings[self])
                                end
                            else
                                local poschange = currentclippedobj.Size.Y + objpaddings[self]

                                if custompropertygets[mtobjs[self]]("ClipsDescendants") then
                                    for i, object in next, objchildren[self] do
                                        if not istouching(object.Position + Vector2.new(0, poschange), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                            object.Visible = false
                                            childrenvisupdates[objmts[object]](objmts[object], false)
                                        else
                                            object.Visible = true
                                            childrenvisupdates[objmts[object]](objmts[object], true)
                                        end
                                    end
                                end

                                scrollpositions[self] = scrollpositions[self] + poschange

                                for i, object in next, objchildren[self] do
                                    childrenposupdates[objmts[object]](objmts[object], object.Position + Vector2.new(0, poschange))
                                    object.Position = object.Position + Vector2.new(0, poschange)
                                end
                            end
                        end

                        return docontinue
                    end

                    refreshscrolling = function()
                        repeat
                        until
                            not scroll(-1)
                    end

                    self.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseWheel then
                            if input.Position.Z > 0 then
                                scroll(-1)
                            else
                                scroll(1)
                            end
                        end
                    end)
                else
                    attemptedscrollable = true
                end
            end

            listfunc = function(self, padding)
                objpaddings[self] = padding
                listcontents[self] = 0
                listchildren[self] = {}
                listindexes[self] = {}
                listadds[self] = {}

                listobjs[self] = true

                for i, object in next, objchildren[self] do
                    table.insert(listchildren[self], object)
                    table.insert(listindexes[self], listcontents[self] + (#listchildren[self] == 1 and 0 or padding))

                    local newpos = mtobjs[self].Position + Vector2.new(0, listcontents[self] + (#listchildren[self] == 1 and 0 or padding))
                    object.Position = newpos

                    childrenposupdates[object](objmts[object], newpos)

                    custompropertysets[object]("AbsolutePosition", newpos)

                    listadds[self][object] = object.Size.Y + (#listchildren[self] == 1 and 0 or padding)
                    listcontents[self] = listcontents[self] + object.Size.Y + (#listchildren[self] == 1 and 0 or padding)
                end

                if attemptedscrollable then
                    scrollfunc(self)
                end
            end
        end

        local customproperties = {
            Parent = nil,
            AbsolutePosition = nil,
            AbsoluteSize = nil,
            ClipsDescendants = false
        }

        custompropertysets[obj] = function(k, v)
            customproperties[k] = v
        end

        custompropertygets[obj] = function(k)
            return customproperties[k]
        end

        local mt = setmetatable({exists = true}, {
            __index = function(self, k)
                if k == "Parent" then
                    return customproperties.Parent
                end

                if k == "Visible" then
                    return objvisibles[obj]
                end

                if k == "Position" then
                    return udim2posobjs[obj] or objpositions[obj] or obj[k]
                end

                if k == "Size" then
                    return udim2sizeobjs[obj] or obj[k]
                end

                if k == "AddListLayout" and listfunc then
                    return listfunc
                end

                if k == "MakeScrollable" and scrollfunc then
                    return scrollfunc
                end

                if k == "RefreshScrolling" and refreshscrolling then
                    return refreshscrolling
                end

                if k == "AbsoluteContentSize" then
                    return listcontents[self]
                end

                if k == "GetChildren" then
                    return function(self)
                        return objmtchildren[self]
                    end
                end

                if k == "Remove" then
                    return function(self)
                        rawset(self, "exists", false)
                        objexists[obj] = false

                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] - listadds[customproperties.Parent][obj]

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position - Vector2.new(0, listadds[customproperties.Parent][obj])
                                end
                            end

                            if table.find(listchildren[customproperties.Parent], obj) then
                                table.remove(listchildren[customproperties.Parent], table.find(listchildren[customproperties.Parent], obj))
                            end

                            if table.find(objchildren[customproperties.Parent], obj) then
                                table.remove(objchildren[customproperties.Parent], table.find(objchildren[customproperties.Parent], obj))
                                table.remove(listindexes[customproperties.Parent], table.find(objchildren[customproperties.Parent], obj))
                            end
                        end

                        if table.find(squares, mtobjs[self]) then
                            table.remove(squares, table.find(squares, mtobjs[self]))
                        end

                        for _, object in next, objchildren[self] do
                            if objexists[object] then
                                table.remove(objsignals, table.find(objsignals, object))
                                objmts[object]:Remove()
                            end
                        end

                        table.remove(objsignals, table.find(objsignals, obj))
                        obj:Remove()
                    end
                end

                if signalnames and signalnames[k] then
                    objsignals[obj] = objsignals[obj] or {}

                    if not objsignals[obj][k] then
                        objsignals[obj][k] = signalnames[k]
                    end

                    objsignals[obj].inputbegan = objsignals[obj].inputbegan or {}
                    objsignals[obj].mouseentered = objsignals[obj].mouseentered or {}
                    objsignals[obj].mouse1down = objsignals[obj].mouse1down or {}

                    return signalnames[k]
                end

                return customproperties[k] or obj[k]
            end,

            __newindex = function(self, k, v)
                local changechildrenvis
                changechildrenvis = function(parent, vis)
                    if objchildren[parent] then
                        for _, object in next, objchildren[parent] do
                            if (custompropertygets[mtobjs[parent]]("ClipsDescendants") and not istouching(object.Position, object.Size, mtobjs[parent].Position, mtobjs[parent].Size)) then
                                object.Visible = false
                                changechildrenvis(objmts[object], false)
                            else
                                object.Visible = vis and objvisibles[object] or false
                                changechildrenvis(objmts[object], vis and objvisibles[object] or false)
                            end
                        end
                    end
                end

                childrenvisupdates[self] = changechildrenvis

                if k == "Visible" then
                    objvisibles[obj] = v

                    if customproperties.Parent and (not mtobjs[customproperties.Parent].Visible or (custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") and not istouching(obj.Position, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size))) then
                        v = false
                        changechildrenvis(self, v)
                    else
                        changechildrenvis(self, v)
                    end
                end

                if k == "ClipsDescendants" then
                    customproperties.ClipsDescendants = v

                    for _, object in next, objchildren[self] do
                        object.Visible = v and (istouching(object.Position, object.Size, obj.Position, obj.Size) and objvisibles[object] or false) or objvisibles[object]
                    end

                    return
                end

                local changechildrenpos
                changechildrenpos = function(parent, val)
                    if objchildren[parent] then
                        if listobjs[parent] then
                            for i, object in next, objchildren[parent] do
                                local newpos = val + Vector2.new(0, listindexes[parent][i])

                                if scrollobjs[parent] then
                                    newpos = val + Vector2.new(0, listindexes[parent][i] + scrollpositions[parent])
                                end

                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                object.Position = newpos
                                custompropertysets[object]("AbsolutePosition", newpos)

                                changechildrenpos(objmts[object], newpos)
                            end
                        else
                            for _, object in next, objchildren[parent] do
                                local newpos = val + objpositions[object]
                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                object.Position = newpos

                                custompropertysets[object]("AbsolutePosition", newpos)

                                changechildrenpos(objmts[object], newpos)
                            end
                        end
                    end
                end

                childrenposupdates[self] = changechildrenpos

                if k == "Position" then
                    if typeof(v) == "UDim2" then
                        udim2posobjs[obj] = v

                        if customproperties.Parent then
                            objpositions[obj] = udim2tovector2(v, mtobjs[customproperties.Parent].Size)

                            if listobjs[customproperties.Parent] then
                                return
                            else
                                v = mtobjs[customproperties.Parent].Position + udim2tovector2(v, mtobjs[customproperties.Parent].Size)
                            end
                        else
                            local newpos = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                            objpositions[obj] = newpos
                            v = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                        end

                        customproperties.AbsolutePosition = v

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end

                        changechildrenpos(self, v)
                    else
                        objpositions[obj] = v

                        if customproperties.Parent then
                            if listobjs[customproperties.Parent] then
                                return
                            else
                                v = mtobjs[customproperties.Parent].Position + v
                            end
                        end

                        customproperties.AbsolutePosition = v

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end

                        changechildrenpos(self, v)
                    end

                    v = v
                end

                local changechildrenudim2pos
                changechildrenudim2pos = function(parent, val)
                    if objchildren[parent] and not listobjs[parent] then
                        for _, object in next, objchildren[parent] do
                            if udim2posobjs[object] then
                                local newpos = mtobjs[parent].Position + udim2tovector2(udim2posobjs[object], val)
                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                if not listobjs[parent] then
                                    object.Position = newpos
                                end

                                custompropertysets[object]("AbsolutePosition", newpos)
                                objpositions[object] = udim2tovector2(udim2posobjs[object], val)
                                changechildrenpos(objmts[object], newpos)
                            end
                        end
                    end
                end

                local changechildrenudim2size
                changechildrenudim2size = function(parent, val)
                    if objchildren[parent] then
                        for _, object in next, objchildren[parent] do
                            if udim2sizeobjs[object] then
                                local newsize = udim2tovector2(udim2sizeobjs[object], val)
                                object.Size = newsize

                                if custompropertygets[mtobjs[parent]]("ClipsDescendants") then
                                    object.Visible = istouching(object.Position, object.Size, mtobjs[parent].Position, mtobjs[parent].Size) and objvisibles[object] or false
                                end

                                custompropertysets[object]("AbsoluteSize", newsize)

                                changechildrenudim2size(objmts[object], newsize)
                                changechildrenudim2pos(objmts[object], newsize)
                            end
                        end
                    end
                end

                if k == "Size" then
                    if typeof(v) == "UDim2" then
                        udim2sizeobjs[obj] = v

                        if customproperties.Parent then
                            v = udim2tovector2(v, mtobjs[customproperties.Parent].Size)
                        else
                            v = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                        end

                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local oldsize = obj.Size.Y
                            local sizediff = v.Y - oldsize

                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                            listadds[customproperties.Parent][obj] = listadds[customproperties.Parent][obj] + sizediff

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position + Vector2.new(0, sizediff)
                                    listindexes[customproperties.Parent][i] = listindexes[customproperties.Parent][i] + sizediff
                                end
                            end
                        end

                        customproperties.AbsoluteSize = v

                        changechildrenudim2size(self, v)
                        changechildrenudim2pos(self, v)

                        if customproperties.ClipsDescendants then
                            for _, object in next, objchildren[self] do
                                object.Visible = istouching(object.Position, object.Size, obj.Position, v) and objvisibles[object] or false
                            end
                        end

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end
                    else
                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local oldsize = obj.Size.Y
                            local sizediff = v.Y - oldsize

                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                            listadds[customproperties.Parent][obj] = listadds[customproperties.Parent][obj] + sizediff

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position + Vector2.new(0, sizediff)
                                    listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                                    listindexes[customproperties.Parent][i] = listindexes[customproperties.Parent][i] + sizediff
                                end
                            end
                        end

                        customproperties.AbsoluteSize = v

                        changechildrenudim2size(self, v)
                        changechildrenudim2pos(self, v)

                        if customproperties.ClipsDescendants then
                            for _, object in next, objchildren[self] do
                                object.Visible = istouching(object.Position, object.Size, obj.Position, v) and objvisibles[object] or false
                            end
                        end

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end
                    end

                    if typeof(v) == "Vector2" then
                        v = Vector2.new(math.floor(v.X), math.floor(v.Y))
                    end
                end

                if k == "Parent" then
                    assert(type(v) == "table", "Invalid type " .. type(v) .. " for parent")

                    table.insert(objchildren[v], obj)
                    table.insert(objmtchildren[v], self)

                    changechildrenvis(v, mtobjs[v].Visible)

                    if udim2sizeobjs[obj] then
                        local newsize = udim2tovector2(udim2sizeobjs[obj], mtobjs[v].Size)
                        obj.Size = newsize

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, newsize, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenudim2pos(self, newsize)
                    end

                    if listobjs[v] then
                        table.insert(listchildren[v], obj)
                        table.insert(listindexes[v], listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]))

                        local newpos = Vector2.new(0, listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]))

                        if scrollobjs[v] then
                            newpos = Vector2.new(0, listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]) + scrollpositions[v])
                        end

                        listadds[v][obj] = obj.Size.Y + (#listchildren[v] == 1 and 0 or objpaddings[v])

                        listcontents[v] = listcontents[v] + obj.Size.Y + (#listchildren[v] == 1 and 0 or objpaddings[v])

                        obj.Position = newpos

                        customproperties.AbsolutePosition = newpos

                        changechildrenpos(self, newpos)
                    end

                    if udim2posobjs[obj] then
                        local newpos = mtobjs[v].Position + udim2tovector2(udim2posobjs[obj], mtobjs[v].Size)
                        objpositions[obj] = udim2tovector2(udim2posobjs[obj], mtobjs[v].Size)
                        obj.Position = newpos
                        customproperties.AbsolutePosition = newpos

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(newpos, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenpos(self, newpos)
                    elseif shape ~= "Line" and shape ~= "Quad" and shape ~= "Triangle" then
                        local newpos = mtobjs[v].Position + obj.Position
                        obj.Position = newpos
                        customproperties.AbsolutePosition = newpos

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(newpos, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenpos(self, newpos)
                    end

                    if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                        obj.Visible = istouching(obj.Position, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                    end

                    customproperties.Parent = v
                    return
                end

                obj[k] = v
            end
        })

        objmts[obj] = mt
        mtobjs[mt] = obj
        objchildren[mt] = {}
        objmtchildren[mt] = {}

        if shape ~= "Line" and shape ~= "Quad" and shape ~= "Triangle" then
            mt.Position = Vector2.new(0, 0)
        end

        mt.Visible = true

        return mt
    end
end

local Render = drawing;

-- // Extension
Drawing.Font.new("Tahoma", "AAEAAAALAIAAAwAwRFNJRwAAAAEABHhoAAAACE9TLzKOH+IsAAABOAAAAGBjbWFwi/6g8AAAHrAAACNsZ2x5ZmnHmK0AAF84AAQK5GhlYWQlnzXAAAAAvAAAADZoaGVhBYIKxwAAAPQAAAAkaG10ePgg7MAAAAGYAAAdGGxvY2EOQWREAABCHAAAHRxtYXhwB1gAZgAAARgAAAAgbmFtZcAJjo8ABGocAAAOKnBvc3QAaQAzAAR4SAAAACAAAQAAAAEAAGbJUsJfDzz1AAAEAAAAAADh5XlBAAAAAOHleUH/AP+AA8ACwAAAAAgAAgABAAAAAAABAAACwP+AAAAEAP8AAAADwAABAAAAAAAAAAAAAAAAAAAHRgABAAAHRgBkABEAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAIBpQGQAAUABAIAAgAAAP/AAgACAAAAAgAAMwDMAAAAAAQAAAAAAAAAYQAqn0AAAAIAAAAIAAAAAEZTVFIAQAAg/vwCQP+AAAACwACAIAEB/83/AAABgAIAAAAAIAAAAfsAAACgAAAAgAAAAQAAAAIAAAABgAAAAsAAAAIAAAAAgAAAAQAAAAEAAAABgAAAAgAAAADAAAABAAAAAIAAAAEAAAABgAAAAQAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAIAAAADAAAABwAAAAgAAAAHAAAABQAAAAoAAAAHAAAABgAAAAcAAAAHAAAABgAAAAYAAAAHAAAABwAAAAQAAAAFAAAABgAAAAUAAAAIAAAABwAAAAgAAAAGAAAACAAAAAcAAAAGAAAABgAAAAcAAAAGAAAACgAAAAYAAAAGAAAABgAAAAQAAAAEAAAABAAAAAgAAAAHAAAAAwAAAAYAAAAGAAAABQAAAAYAAAAGAAAABAAAAAYAAAAGAAAAAgAAAAMAAAAGAAAAAgAAAAgAAAAGAAAABgAAAAYAAAAGAAAABAAAAAUAAAAEAAAABgAAAAYAAAAIAAAABgAAAAYAAAAFAAAABQAAAAIAAAAFAAAACAAAAAIAAAAGAAAABgAAAAYAAAAGAAAAAgAAAAYAAAAEAAAACgAAAAUAAAAGAAAABwAAAAQAAAAKAAAABwAAAAUAAAAIAAAABAAAAAQAAAADAAAABgAAAAYAAAACAAAABwADAAQAAAAFAAAABgAAAAoAAAAKAAAACgAAAAUAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAKAAAABwAAAAYAAAAGAAAABgAAAAYAAAAEAAAABAAAAAUAAAAEAAAACAAAAAcAAAAIAAAACAAAAAgAAAAIAAAACAAAAAcAAQAIAAAABwAAAAcAAAAHAAAABwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAoAAAAFAAAABgAAAAYAAAAGAAAABgAAAAMAAAADAAAABAAAAAQAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAACAAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABwAAAAYAAAAHAAAABgAAAAgAAAAHAAAABwAAAAUAAAAHAAAABQAAAAcAAAAFAAAABwAAAAYAAAAHAAAACQAAAAgAAAAHAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAJAAAABwAAAAQAAAAFAAAABAAAAAQAAAAEAAAABAAAAAQAAAADAAAABAAAAAIAAAAIAAAABQAAAAYAAAAEAAAABgAAAAYAAAAFAAAABQAAAAMAAAAFAAAABAAAAAUAAAAFAAAABQAAAAQAAAAGAAAABAAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAgAAAAHAAAABgAAAAgAAAAGAAAACAAAAAYAAAAIAAAABgAAAAsAAAAKAAAABwAAAAQAAAAHAAAABQAAAAcAAAAFAAAABgAAAAUAAAAGAAAABQAAAAYAAAAFAAAABgAAAAUAAAAGAAAABAAAAAYAAAAGAAAABgAAAAQAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAcAAAAKAAAACAAAAAYAAAAGAAAABgAAAAYAAAAFAAAABgAAAAUAAAAGAAAABQAAAAUAAQAGA/8ACQAAAAcAAAAGAAAABwP/AAYD/wAHAAAACQAAAAYAAAAHA/8ACQAAAAcAAAAGAAAABgAAAAcAAAAIAAAABwAAAAcD/gAGA/8ACQAAAAkAAAAKAAAAAgAAAAQAAAAGAAAABgAAAAQAAAAHAAAACgAAAAcD/gAGAAAACAAAAAkAAAAHAAAACgAAAAgAAAAIAAAABgAAAAgAAAAGAAAABQAAAAcAAAAHAAAABAAAAAYD/wAEAAAABgAAAAkAAAAIAAAACAAAAAcAAAAJAAAACAAAAAcAAAAFAAAABgAAAAYD/wAGAAAABgAAAAYAAAAGAAAABQAAAAYAAAAGAAAAAgAAAAQAAAAIAAAAAgAAAA0AAAAMAAAACwAAAAoAAAAJAAAABQAAAAwAAAAKAAAACQAAAAcAAAAGAAAABQAAAAQD/wAIAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAGAAAABwAAAAYAAAAHAAAABgAAAAoAAAAKAAAACAAAAAYAAAAHAAAABgAAAAYAAAAGAAAACAAAAAYAAAAIAAAABgAAAAYAAAAFAAAABAP/AA0AAAAMAAAACwAAAAcAAAAGAAAACwAAAAYAAAAHAAAABgAAAAcAAAAGAAAACgAAAAoAAAAIAAAABgAAAAcAAAAGAAAABwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABAP/AAQD/wAFAAAABAP/AAgAAAAGAAAACAAAAAYAAAAHAAAABQAAAAcAAAAFAAAABwAAAAYAAAAHAAAABgAAAAYAAAAFAAAABgAAAAQAAAAGAAAABgAAAAcAAAAGAAAABwAAAAkAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAGAAAABgAAAAgAAAAGAAAACAAAAAYAAAAIAAAABgAAAAgAAAAGAAAABgAAAAYAAAAGAAAACQAAAAYAAAADAAAACgAAAAoAAAAIA/8ACAAAAAYAAAAFA/8ABwAAAAYAAAAGAAAABgAAAAYAAAAGA/8ACAP/AAcAAAAGAAAABgAAAAYAAAAEAAAACgAAAAgAAAAHA/8ABAP/AAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAUAAAAFA/8ACAAAAAcAAAAGAAAABgAAAAkAAAAGAAAABgAAAAkAAAAGAAAABAP/AAgAAAAGAAAABgAAAAcAAAAIA/8ABgAAAAYAAAAGAAAABAAAAAIAAAAEAAAABQP/AAQAAAAEAAAABgAAAAgAAAAIAAAACAAAAAYD/gAIAAAABgAAAAYAAAAJAAAACAAAAAYAAAAEAAAABAAAAAYAAAAEAAAABAAAAAUAAAAEA/8ABgAAAAYAAAAFAAAABgAAAAUD/wAFA/8ABwP/AAQAAAAEAAAABwP/AAYAAAAGAAAABgAAAAgAAAAGAAAABgAAAAcAAAAIAAAABQAAAAYAAAAGAAAABgAAAAYAAAAFAAAACAAAAAYAAAAGAAAACAAAAAYAAAAFA/8ABgAAAAUAAAAIAAAABgAAAAYAAAAKAAAACgAAAA0AAAAIAAAABwAAAAoAAAAIA/8ABwAAAAYAAAAHAAAABwAAAAcD/wAJA/8AAgAAAAYAAQAGAAEABgABAAYAAQAEAAIABwADAAUAAgAHAAIABgABAAMAAAAFAAMACAACAAgAAAADAAEACAAAAAkAAAAGAAAACQAAAAgAAAAJAAAABQP/AAcAAAAGAAAABgAAAAcAAAAGAAAABgAAAAcAAAAIAAAABAAAAAYAAAAHAAAACAAAAAcAAAAGAAAACAAAAAcAAAAGAAAABgAAAAYAAAAGAAAACAAAAAYAAAAIAAAACAAAAAQAAAAGAAAABgAAAAUAAAAGAAAAAgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABQAAAAUAAAAGAAAABgAAAAIAAAAGAAAABgAAAAYAAAAGAAAABQAAAAYAAAAGAAAABgAAAAUAAAAHAAAABgAAAAYAAAAIAAAABgAAAAgAAAAIAAAABAAAAAYAAAAGAAAABgAAAAgAAAAGAAAABgAAAAgAAAAGAAAABwAAAAYAAAAEAAAABAAAAAUAAAALAAAACwAAAAgAAAAHAAAABwAAAAcAAAAHAAAABwAAAAYAAAAGAAAABgAAAAgAAAAGAAAACgAAAAYAAAAHAAAABwAAAAcAAAAHAAAACAAAAAcAAAAIAAAABwAAAAYAAAAHAAAABgAAAAcAAAAIAAAABgAAAAgAAAAHAAAACgAAAAsAAAAIAAAACAAAAAYAAAAHAAAACgAAAAcAAAAGAAAABgAAAAYAAAAFAAAABwAAAAYAAAAIAAAABQAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAUAAAAGAAAABgAAAAgAAAAGAAAABgAAAAYAAAAIAAAACQAAAAcAAAAHAAAABQAAAAUAAAAJAAAABgAAAAYAAAAGAAAABwAAAAUAAAAFAAAABQAAAAIAAAAEAAAAAwAAAAkAAAAJAAAABwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABQAAAAcAAAAGAAAACgAAAAgAAAAIAAAABgAAAAcAAAAGAAAACQAAAAcAAAAGAAAABgAAAAgAAAAGAAAACAAAAAcAAAAHAAAABgAAAAcAAAAGAAAACAAAAAYAAAAIAAAABgAAAAQAAgAHAAEABgABAAcAAQAFAAMABgACAAYAAgAFAAIABgACAAUAAwAHAAEABQADAAUAAwAEAAEABQACAAMAAQAEAAIAAgAAAAIAAAAIAAAACAAAAAYAAAAHAAAACAAAAAMAAAAEAAAACAAAAAgAAAADAAAABwAAAAcAAAAHAAAACAAAAAgAAAAEAAAABAAAAAkAAAAHAAAABwAAAAcAAAAGAAAABwAAAAcAAAAHAAAACQAAAAkAAAAGAAAABgAAAAYAAAADAAAABQAAAAMAAAADAAAABQAAAAQAAAAFAAAABAAAAAUAAAAEAAAACgABAAMAAQAJAAEABQAAAAkAAQAJAAEABwAAAAcAAAAHAAAABQAAAAUAAAAEAAAABAAAAAwAAAAMAAAADAAAAAwAAAAHAAAABwAAAAcAAAAHAAAABAAAAAkAAAAJAAAABwAAAAYAAAAHAAAABgAAAAUAAAAFAAAACQAAAAkAAAAEAAAABQAAAAQAAAAFAAAAAwAAAAQAAAAEAAAAAwAAAAMAAAAEAAAAAwAAAAQAAAAFAAIABwABAAcAAAAGAAAABwAAAAcAAAAGAAAABgAAAAYAAAAHAAAAAwAAAAMAAAAIAAAAAgAAAAQAAAAEAAAABAABAAQAAAAFAAAABgAAAAYAAAAKAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABAAAAAQAAAAFAAAABQAAAAUAAAAFAAAABQAAAAQAAAAEAAAADAAAAAwAAAAMAAAADAAAAAwAAAAHAAAABwAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAoAAAAKAAAACgAAAAsAAAAKAAAABwAAAAcAAAAHAAAACgAAAAoAAAAKAAAACgAAAAoAAAAKAAAABwAAAAYAAAAHAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAACAAAAAcAAAAFAAAABgAAAAYAAAAGAAAABgAAAAYAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAJAAAACgAAAAkAAAAFAAAACQAAAAkAAAALAAAACwAAAA0AAAAPAAAABAAAAAUAAgAGAAAABwAAAAcAAAAGAAAABQAAAAYAAAAGAAAABgAAAAwAAAAMAAAABwAAAAQAAAAGAAAABgAAAAcAAAAHAAAABwAAAAcAAAAHAAAABQAAAAUAAAAHAAAACAAAAAkAAAAIAAAACQAAAAcAAAAHAAAABgAAAAkAAAAKAAAACAAAAAcAAAAHAAAABgAAAAgAAAAGAAAABwAAAAcAAAAHAAAABgAAAAYAAAAHAAAABwAAAAcAAAAHAAAABQAAAAUAAAAGAAAABgAAAAcAAAAFAAAABwAAAAgAAAAHAAAABwAAAAgAAAAGAAAABwAAAAYAAAAGAAAAAwP+AAUAAAAIAAAABAP/AAQD/wAFA/8ABQP/AAID/wAEA/8AAQP/AAYAAAAEAAEABwABAAUAAAAFAAAABgAAAAUAAAAFAAAABAP/AAED/wAEA/8ABAP/AAMD/wADA/8AAgP/AAID/wAGAAAABgAAAAYAAAAHAAAABwAAAAgAAAAIAAAABwAAAAgAAAAIAAAACAAAAAgAAAALAAAABwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAHAAAABQAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAUAAAAGAAAABgAAAAQAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcD/wAGA/8ABwAAAAYAAAAFAAAABQAAAAQAAAAEAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABQAAAAIAAAAFAAAABAP/AAUAAAAEA/8ABQAAAAQD/wAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAgAAAAGAAAACAAAAAYAAAAIAAAABgAAAAgAAAAGAAAABgAAAAYAAAAGAAAABgAAAAcAAAAEAAAABwAAAAQAAAAHAAAABQAAAAcAAAAFAAAABgAAAAUAAAAGAAAABQAAAAYAAAAFAAAABgAAAAUAAAAGAAAABQAAAAYAAAAEAAAABgAAAAQAAAAGAAAABQAAAAYAAAAFAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAYAAAAGAAAABgAAAAYAAAAKAAAACAAAAAoAAAAIAAAACgAAAAgAAAAKAAAACAAAAAoAAAAIAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAUAAAAGAAAABQAAAAYAAAAFAAAABgAAAAQD/wAIAAAABgAAAAYAAAAEAAAABwAAAAYAAAAHAAAABgAAAAcAAAAHAAAABwAAAAYAAAAIAAAACAAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABwAAAAYAAAAHAAAABgAAAAcAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABwAAAAcAAAAGAAAABgAAAAgAAAAHAAAABgAAAAYAAAAGAAAABgAAAAQAAAACA/8ABAAAAAIAAAAIAAAABgAAAAgAAAAGAAAACAAAAAYAAAAIAAAABgAAAAgAAAAHAAAACAAAAAYAAAAIAAAABgAAAAkAAAAHAAAACQAAAAcAAAAJAAAABwAAAAkAAAAHAAAACQAAAAcAAAAHAAAABgAAAAcAAAAGAAAACQAAAAgAAAAJAAAACAAAAAkAAAAIAAAACQAAAAgAAAAJAAAACAAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAHAAAABwAAAAgAAAAIAAAACAAAAAgAAAAIA/8ACAP/AAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAgAAAAIAAAACQAAAAkAAAAJAAAACQAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAACQAAAAkAAAAKAAAACgAAAAoAAAAKAAAACgP/AAoD/wACAAAAAgAAAAQAAAAEAAAABAAAAAQAAAAFAAAABQAAAAYAAAAGAAAABwAAAAcAAAAHAAAABwAAAAgAAAAIAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAACAAAAAkAAAAKAAAACgAAAAkAAAAJAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAIAAAACQAAAAkAAAAJA/8ACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACQAAAAoAAAAKAAAACgAAAAoAAAAKA/8ACgP/AAYAAAAGAAAABQAAAAUAAAAGAAAABgAAAAID/wADAAAABgAAAAYAAAAGAAAABgAAAAgAAAAIAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAHAAAABwAAAAgAAAAIAAAACAAAAAgAAAAIA/8ACAP/AAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAACQAAAAkAAAAJA/8ACQP/AAkD/wAJA/8ACgP/AAoD/wAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAJAAAACgAAAAoAAAAKAAAACgAAAAoD/wAKA/8ABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAcAAAAHAAAABwP/AAcAAAAHAAAAAwABAAUAAwAEAAIABgABAAUAAAAGAAAABgAAAAYAAAAGAAAABgAAAAgAAAAIAAAACQAAAAkAAAAHAAAABAAAAAQAAAAFAAAABAP/AAQD/wADA/8AAwP/AAQD/wAEA/8ABQAAAAUAAAAFA/8ABQP/AAQAAAAEAAAABQAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAGAAAABgAAAAYAAAAHA/8ABwP/AAcD/wAGAAAABgAAAAQAAQAIAAAACAAAAAgAAAAIAAAACAAAAAkD/wAIAAAACQP/AAgAAAAIAAAABAABAAMAAQABA/4AAQP8AAED/AABA/wABwAAAAsAAAAJAAAABwAAAAMAAAACA/8AAgP/AAID/wAFAAAABAP/AAQD/wAGAAAABgAAAAUAAAAJAAEAEAAAAAMAAAAFAAAABAAAAAQAAAAEAAAABwAAAAYAAAAFAAAABwAAAAcAAAAHAAAABwAAAAYAAAAIAAAACAAAAAsAAAAMAAAACgAAAAkAAAAHAAAABwAAAAcAAAAGAAAADAAAAAoAAAAEAAAADQAAAAoAAAAIAAAABwAAAAoAAAALAAAACwAAAAsAAAAGAAAABwAAAAcAAAAGAAAABwAAAAYAAAACAAAACQAAAAoAAAAGAAAABwAAAAgAAAAHAAAABwAAAAcAAQAEAAEABAABA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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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AAEU/AABFXgAARZgAAEW8AABF4AAARgoAAEYuAABGWgAARoMAAEaUAABGtwAARtoAAEcRAABHSwAAR3QAAEeJAABHrAAAR9MAAEf8AABIGAAASDkAAEhhAABIgwAASKIAAEjFAABI9wAASRIAAEkyAABJZgAASYEAAEmpAABJxgAASekAAEoRAABKLAAASj8AAEpSAABKbQAASoEAAEqlAABKwwAASt4AAEr/AABLHQAAS0UAAEtvAABLmQAAS8sAAEvvAABMCgAATC0AAExIAABMZgAATJUAAEy0AABMxwAATOAAAEz+AABNFgAATR8AAE0yAABNUAAATWMAAE1xAABNkgAATa4AAE3MAABN7QAATgMAAE4ZAABONwAATlUAAE5yAABOlgAATr4AAE7RAABO5AAATv0AAE8QAABPKQAATzcAAE9FAABPYwAAT4EAAE+oAABPvAAAT9oAAE/uAABQGAAAUCsAAFA+AABQXQAAUIEAAFCgAABQvwAAUOkAAFENAABRLAAAUVIAAFGFAABRowAAUdEAAFHtAABSCQAAUiUAAFI5AABSbgAAUowAAFKwAABS0wAAUuYAAFMMAABTNQAAU0AAAFNeAABThAAAU6oAAFPXAABUBwAAVEkAAFRsAABUjwAAVMUAAFToAABVEQAAVTEAAFVrAABVgwAAVZwAAFW6AABVwwAAVdcAAFXrAABV9AAAVggAAFYRAABWKgAAVjUAAFZIAABWYQAAVnUAAFZ+AABWkgAAVrUAAFa+AABW1gAAVu4AAFcGAABXOwAAV18AAFeeAABXtwAAV9QAAFfyAABX/QAAWBsAAFguAABYUgAAWGUAAFiaAABYrQAAWNwAAFj7AABZHwAAWT0AAFlRAABZgAAAWY4AAFmkAABZ0AAAWd4AAFn9AABaJQAAWloAAFp4AABasgAAWtAAAFr6AABbEwAAWzcAAFtNAABbWwAAW38AAFuSAABbtgAAW9UAAFwBAABcIAAAXEYAAFxXAABcdQAAXH4AAFynAABc0QAAXOkAAF0IAABdNgAAXU8AAF1dAABddgAAXZcAAF2wAABdvgAAXdIAAF34AABeLQAAXksAAF51AABeiQAAXqgAAF7HAABe4AAAXw8AAF8tAABfSwAAX2kAAF9/AABfowAAX8IAAF/VAABf8wAAYAQAAGAkAABgRAAAYFwAAGCTAABgwQAAYOgAAGD7AABhGAAAYTAAAGFOAABhWQAAYXsAAGGOAABh3QAAYfwAAGIfAABiUwAAYn8AAGKSAABitgAAYskAAGL4AABjBgAAYxwAAGM7AABjSQAAY3AAAGOYAABjzQAAY+AAAGPzAABkBgAAZB4AAGQ2AABkUQAAZGcAAGSLAABkxAAAZOcAAGUCAABlJgAAZUQAAGVPAABlbAAAZY0AAGXMAABl6wAAZgkAAGY3AABmYAAAZnMAAGaRAABmpAAAZr0AAGbLAABm4QAAZvUAAGcDAABnJwAAZ08AAGeEAABnlwAAZ6oAAGe9AABn1QAAZ+0AAGgIAABoHgAAaDcAAGhaAABoeAAAaKQAAGjQAABo+AAAaQ4AAGknAABpRQAAaVMAAGlnAABpfQAAaZ0AAGm9AABp2gAAagMAAGosAABqYQAAanQAAGqCAABqkAAAaqUAAGq6AABrCQAAa0IAAGt2AABrmQAAa8kAAGvsAABsBAAAbBwAAGw7AABsWgAAbIgAAGyxAABs+wAAbS8AAG1MAABtZgAAbXkAAG2MAABtugAAbdgAAG4MAABuKgAAbjMAAG5MAABuWgAAbm0AAG52AABuhAAAbpgAAG6hAABurwAAbrgAAG7MAABu1QAAbt4AAG7nAABu8AAAbvkAAG8CAABvCwAAbxkAAG9ZAABvcgAAb5YAAG+kAABvvQAAb8sAAG/fAABv9QAAcBkAAHAnAABwOwAAcFoAAHB7AABwkQAAcLUAAHDDAABw1AAAcP0AAHEhAABxPQAAcWQAAHGAAABxrwAAcdMAAHHnAAByGAAAcjYAAHJPAAByaAAAcoEAAHKPAAByqAAAcrkAAHLPAABy7gAAcwcAAHMmAABzPwAAc20AAHOAAABzvAAAc8UAAHPeAAB0BQAAdCQAAHRIAAB0bAAAdIoAAHSuAAB0xAAAdOAAAHT0AAB1DQAAdTYAAHVwAAB1ngAAddIAAHXwAAB2EwAAdj0AAHZsAAB2dQAAdp4AAHbSAAB28AAAdwQAAHcoAAB3QQAAd10AAHd7AAB3pwAAd94AAHfsAAB39wAAeAAAAHgJAAB4EgAAeBsAAHgpAAB4MgAAeEAAAHhQAAB4XgAAeHEAAHh/AAB4mwAAeMIAAHjmAAB5CgAAeSMAAHlBAAB5XwAAeX0AAHnAAAB50QAAeeIAAHoVAAB6HgAAei8AAHpIAAB6VgAAemkAAHp/AAB6rQAAet0AAHsZAAB7NwAAe1AAAHtpAAB7jQAAe7EAAHvUAAB78wAAfBEAAHw/AAB8YwAAfIwAAHywAAB83wAAfQsAAH0xAAB9UgAAfW0AAH2JAAB9rwAAfdAAAH3xAAB+GAAAfj8AAH5gAAB+fgAAfqIAAH61AAB+zgAAfuQAAH8DAAB/IgAAf0YAAH9lAAB/mQAAf8oAAIAMAACARQAAgIQAAICvAACA6QAAgQ0AAIE2AACBZQAAgZkAAIHNAACB/AAAgjAAAIJvAACCngAAgtAAAIL/AACDIwAAg1IAAIN9AACDvQAAg/wAAIRHAACEkgAAhNcAAIUfAACFQwAAhVwAAIWAAACFngAAhb0AAIXRAACF7wAAhgsAAIYvAACGXQAAhosAAIa3AACG0wAAhv8AAIcmAACHSQAAh2wAAIebAACHwQAAh+UAAIgUAACIPQAAiGwAAIiYAACIwQAAiP4AAIkiAACJUwAAiY8AAImwAACJ4QAAihkAAIqeAACKsQAAir8AAIrbAACLAgAAiygAAItRAACLcgAAi5AAAIuuAACLzAAAjAYAAIw/AACMdAAAjJIAAIy4AACM0QAAjO8AAI0PAACNKgAAjVAAAI11AACNjgAAjaQAAI3EAACN7wAAjh8AAI5HAACObwAAjpIAAI69AACO5QAAjxYAAI9MAACPdAAAj5gAAI/BAACP3AAAj/8AAJAcAACQNwAAkEcAAJBXAACQdwAAkJcAAJC3AACQ1wAAkPUAAJEQAACRKwAAkUEAAJFcAACRggAAkaAAAJG2AACR0wAAkfAAAJIbAACSOQAAkl4AAJJ0AACSpQAAkrgAAJLWAACS5wAAkvUAAJMJAACTFwAAkycAAJM3AACTRwAAk1IAAJNiAACTawAAk54AAJOpAACTvAAAk9UAAJPwAACUCQAAlBcAAJQwAACUSQAAlFIAAJRlAACUeAAAlIYAAJSRAACUmgAAlKgAAJTHAACU4AAAlPwAAJUiAACVSwAAlWkAAJWSAACVuQAAleUAAJYLAACWNwAAllAAAJZzAACWlgAAlrQAAJbXAACW8gAAlxUAAJcwAACXUwAAl24AAJeiAACXywAAl+8AAJgKAACYLgAAmEkAAJhtAACYiAAAmK4AAJjOAACY+gAAmSAAAJlAAACZcQAAmZEAAJnCAACZ5QAAmhMAAJoyAACaYAAAmosAAJrEAACa2gAAmvMAAJscAACbPQAAm1UAAJtuAACbhgAAm58AAJu9AACb2wAAm/gAAJwWAACcOQAAnFcAAJx3AACckgAAnLUAAJzUAACdDgAAnUIAAJ12AACdpQAAndkAAJ4IAACeGQAAnicAAJ49AACeUQAAnmIAAJ5wAACeiwAAnqEAAJ7QAACe9wAAnyAAAJ9BAACfagAAn4sAAJ+vAACfxQAAn+kAAJ//AACgIwAAoDkAAKBoAACgiQAAoMoAAKD+AAChSAAAoYIAAKG+AACh6AAAoiQAAKJOAACibwAAopAAAKKrAACixgAAou8AAKMIAACjMQAAo0oAAKN4AACjlgAAo78AAKPYAACj/AAApCAAAKREAACkaAAApJcAAKTGAACk+gAApS4AAKVYAAClgQAApZQAAKWtAAClwAAApdkAAKXsAACmBQAApiAAAKY+AACmXQAApnkAAKaXAACmsgAAptYAAKb3AACnIAAAp0wAAKdwAACnkQAAp8AAAKfvAACoEwAAqDcAAKh3AACorAAAqOwAAKkhAACpYQAAqZYAAKnQAACp/wAAqjkAAKpoAACqogAAqtwAAKscAACrXAAAq4AAAKuqAACr3gAArA0AAKw2AACsWgAArIMAAKynAACswAAArN4AAK0eAACtWAAArYQAAK2YAACtuwAArdwAAK4BAACuJAAArlcAAK6IAACupQAArtYAAK8MAACvQAAAr2gAAK+jAACv1gAAsAcAALAvAACwYAAAsIgAALC5AACw4QAAsRUAALE4AACxawAAsZ4AALHPAACx5wAAsg0AALIoAACyUQAAsnQAALKlAACyzgAAswUAALMuAACzZQAAs5AAALPJAACz5gAAtCcAALRQAAC0hwAAtKIAALSzAAC0ywAAtN8AALUUAAC1MwAAtWoAALWLAAC10AAAtf8AALZEAAC2cwAAtrsAALbtAAC3JwAAt2AAALelAAC31AAAuBEAALg4AAC4dQAAuJwAALjWAAC4+gAAuTwAALloAAC5nwAAucAAALnZAAC57wAAugsAALokAAC6SwAAum8AALqWAAC6ugAAut4AALr/AAC7KwAAu1QAALt1AAC7kwAAu70AALvsAAC8EAAAvDoAALxhAAC8jQAAvLwAALzwAAC9CQAAvSIAAL1DAAC9ZAAAvYUAAL2mAAC9zAAAvfIAAL4VAAC+OAAAvmAAAL6IAAC+swAAvt4AAL8OAAC/PgAAv2IAAL+GAAC/sgAAv94AAMAKAADANgAAwE4AAMBmAADAgwAAwKAAAMDAAADA4AAAwPYAAMEMAADBKgAAwUgAAMFmAADBhAAAwacAAMHKAADB4gAAwfoAAMIXAADCNAAAwlQAAMJ0AADCmQAAwr4AAMLMAADC2gAAwvAAAMMGAADDHAAAwzIAAMNNAADDaAAAw4AAAMOYAADDswAAw84AAMPuAADEDgAAxDMAAMRYAADEdwAAxJYAAMS9AADE5AAAxQsAAMUyAADFZwAAxZwAAMXZAADGFgAAxlMAAMaQAADGqQAAxsIAAMbjAADHBAAAxyUAAMdGAADHbAAAx5IAAMe2AADH3wAAyAsAAMg8AADIawAAyJoAAMjRAADJCAAAyT8AAMl2AADJsgAAye4AAMotAADKbAAAyrMAAMr6AADLQQAAy4gAAMvUAADMIAAAzD4AAMxcAADMhgAAzLAAAMzMAADM6AAAzPwAAM0QAADNNAAAzVgAAM13AADNlgAAzcsAAM4AAADOHgAAzjwAAM5iAADOiAAAzq4AAM7UAADO/wAAzyoAAM9SAADPegAAz6cAAM/UAADQBAAA0DQAANBpAADQngAA0LQAANDKAADQ6AAA0QYAANEkAADRQgAA0WUAANGIAADRpgAA0cQAANHnAADSCgAA0jAAANJWAADSgQAA0qwAANLhAADTFgAA01MAANOQAADTzQAA1AoAANRMAADUjgAA1NMAANUYAADVZQAA1bIAANX/AADWTAAA1p4AANbwAADXFAAA1y0AANdQAADXaAAA14sAANeuAADX1gAA2AQAANgnAADYTwAA2HcAANiaAADYowAA2KwAANi1AADYyAAA2OYAANkCAADZEwAA2S8AANlQAADZcQAA2YwAANmqAADZxQAA2eMAANn7AADaDAAA2h0AANozAADaTAAA2loAANpzAADahAAA2p0AANrBAADa5AAA2vwAANsUAADbMgAA20MAANtUAADbagAA244AANunAADb0QAA2/sAANwZAADcNwAA3FsAANyKAADcuQAA3N0AAN0HAADdLgAA3UkAAN1iAADdewAA3YkAAN3DAADd8gAA3iwAAN5mAADepQAA3t8AAN8ZAADfXgAA36MAAN/iAADf8AAA3/kAAOACAADgFQAA4CgAAOA7AADgRAAA4E0AAOBWAADgXwAA4G0AAOB7AADgiQAA4JcAAOCwAADgyQAA4OIAAOD1AADhEgAA4SUAAOE5AADhlAAA4aIAAOG7AADh2gAA4fkAAOISAADiGwAA4joAAOJLAADibgAA4qgAAOLZAADi8wAA4xoAAOM6AADjcQAA46YAAOPbAADkJgAA5EQAAORpAADklgAA5MkAAOTrAADlKwAA5WwAAOV/AADluQAA5eEAAOYbAADmTAAA5pYAAOb0AADnTAAA568AAOfYAADn9gAA6AQAAOgzAADoPAAA6FsAAOhkAADojgAA6LgAAOjMAADo+wAA6RgAAOk8AADpYAAA6W4AAOl3AADpgAAA6cUAAOnYAADp8QAA6gwAAOoiAADqRgAA6n0AAOq0AADq7QAA6yYAAOtrAADrtQAA6/oAAOwYAADsQgAA7FUAAOx0AADsiAAA7KEAAOzLAADs3wAA7PgAAO0cAADtQwAA7WwAAO2CAADtsQAA7dIAAO3+AADuMwAA7l0AAO52AADuqgAA7s4AAO7iAADvAAAA7yQAAO9QAADvkgAA76sAAO/KAADv7gAA8AcAAPAlAADwUwAA8IYAAPCfAADwugAA8PQAAPEzAADxUQAA8XUAAPF+AADxjAAA8aUAAPG+AADx1wAA8fAAAPIlAADySQAA8mgAAPKHAADypgAA8sUAAPLpAADzDQAA8zEAAPNVAADzeQAA86cAAPPLAADz9AAA9BIAAPQ7AAD0WQAA9H0AAPShAAD01QAA9PkAAPUiAAD1NgAA9UoAAPVjAAD1fAAA9ZUAAPWpAAD1wgAA9dsAAPYEAAD2LQAA9lEAAPZ1AAD2rwAA9ukAAPceAAD3UwAA94wAAPfFAAD3+QAA+C0AAPhsAAD4qwAA+OUAAPkfAAD5SAAA+XEAAPmaAAD5wwAA+fEAAPofAAD6TQAA+nsAAPqlAAD65AAA+wgAAPsxAAD7YAAA+6UAAPvOAAD7/QAA/CYAAPxPAAD8cwAA/J0AAPzRAAD9BQAA/S4AAP1dAAD9ewAA/ZkAAP3FAAD99wAA/gsAAP4fAAD+LQAA/kEAAP5gAAD+hAAA/qMAAP7KAAD+4wAA/vwAAP8QAAD/KQAA/1MAAP9sAAD/mgAA/80AAP/rAAEACQABADMAAQBoAAEAkgABAMcAAQDmAAEA/wABAT4AAQGAAAEBuQABAfUAAQIrAAECZAABAo0AAQK5AAFAAAAAAG7AkAAAgAFAAgACwAPAAABAQEBAQEBAQEBAQEBAQEBAXX/aP9o/+0AmP9oAVcAAP9n/+0AmP7Q/7sAAAG7AAAAMgDa/yYAEwDbANr+SwG1/yYAEwDbAAD98gJAAAD9wAAAAAIAAAAAAEACAAADAAcAAAEBAQEBAQEBAAAAAABAAAD/wAAAAEAAAAAAAEAAAP/AAIABgAAA/oAAAgAAAYAAwAJAAAMABwAAAQEBAQEBAQEAAAAAAEAAAABAAAAAQAAAAYAAwAAA/0AAAADAAAD/QAACAAAAAAHAAgAAAwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAD/wAAA/4AAAP/AAAAAgAAA/8AAAACAAAAAQAAAAEAAAABAAAAAQAAA/4AAAABAAAD/gAAA/8AAAP/AAAAAwACAAAD/gP9AAIAAAABAAAAAgAAAAEAAAACAAAD/gAAAAIAAAP+AAAD/wAAA/4AAAP/AAAD/gAAAAIAAAP+AAAMAAP+AAUACQAADAAcAIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAEAAAABAAAD/gAAAAIAAAP/AAAAAQAAA/8AAAABAAAAAQAAAAIAAAP+AAAAAQAAA/8AAAABAAAD/wAAAAEAAgAAA/4AAwACAAAD/gP6AAIAAAABAAAAAgAAAAEAAAACAAAAAQAAAAIAAAP+AAAD/wAAA/4AAAP/AAAD/gAAA/8AAAP+AAAAADAAAAAACgAIAAAMABwALAA8AEwAXABsAHwAjACcAKwAvAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBwAAAAIAAAP6AAAAAQAAAAIAAAABAAAAAgAAAAEAAAP6AAAAAQAAAAIAAAACAAAD+AAAAAIAAAACAAAAAQAAA/oAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAMAAAABAAAAAAABAAAD/wAAAAIAAAP+AAEAAgAAA/4AAAACAAAD/gABAAIAAAP+AAEAAQAAA/8AAQABAAAD/wAAAAIAAAP+AAEAAgAAA/4AAAACAAAD/gACAAEAAAP/A/8AAgAAA/4AACgAAAAABwAIAAAMABwANABEAFQAZAB0AIQAlACkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAIAAAABAAAD/QAAAAEAAAABAAAD+gAAAAEAAAACAAAAAQAAA/0AAAACAAAAAgAAAAEAAAP6AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAEAAAP/AAAAAQAAA/8AAQACAAAD/wAAA/8AAAADAAAD/QACAAEAAAP/AAEAAQAAA/8D/wACAAAD/gACAAIAAAP+AAAAAgAAA/4AAgABAAAD/wAAAAAEAAAGAAEACQAADAAABAQEBAAAAAABAAAABgADAAAD/QAAAAAUAAP+AAMACQAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAD/gAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAAAAAEAAAP+AAEAAAP/AAEAAgAAA/4AAgAFAAAD+wAFAAIAAAP+AAIAAQAAA/8AAAAAFAAD/gADAAkAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAABAAAAAAAAAAEAAAP+AAAAAQAAA/4AAAABAAAD/gABAAAD/wABAAIAAAP+AAIABQAAA/sABQACAAAD/gACAAEAAAP/AAAAABQAAAQABQAJAAAMABwALAA8AGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAMAAAABAAAD+wAAAAEAAAADAAAAAQAAA/0AAAP/AAAAAQAAAAEAAAABAAAD/wAAAAUAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAAAQAAA/8D/QACAAAAAQAAAAIAAAP+AAAD/wAAA/4AAAAABAAAAAAHAAcAACwAAAQEBAQEBAQEBAQEBAMAAAP9AAAAAwAAAAEAAAADAAAD/QAAAAAAAwAAAAEAAAADAAAD/QAAA/8AAAP9AAAAAAgAA/4AAgACAAAMABwAAAQEBAQEBAQEAAAAAAEAAAAAAAAAAQAAA/4AAQAAA/8AAQADAAAD/QAABAAAAwADAAQAAAwAAAQEBAQAAAAAAwAAAAMAAQAAA/8AAAAABAAAAAABAAIAAAwAAAQEBAQAAAAAAQAAAAAAAgAAA/4AAAAADAAD/gADAAkAAAwAHAAsAAAEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAABAAAAAAAAAAEAAAP+AAMAAAP9AAMABQAAA/sABQADAAAD/QAAAAAQAAAAAAUACAAADAAcACwAPAAABAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAAAAABAAAD/wABAAYAAAP6AAAABgAAA/oABgABAAAD/wAABAAAAAADAAgAACwAAAQEBAQEBAQEBAQEBAAAAAABAAAD/wAAAAEAAAABAAAAAQAAAAAAAQAAAAUAAAABAAAAAQAAA/kAAAP/AAAAABwAAAAABQAIAAAUACQANABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAQAAAP8AAAAAQAAAAAAAAABAAAAAAAAAAEAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAMAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAQAAA/8AAQABAAAD/wACAAEAAAP/A/8AAgAAA/4AAgABAAAD/wAAHAAAAAAFAAgAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP9AAAAAgAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAAAAAAQAAA/8AAQABAAAD/wAAAAMAAAP9AAMAAQAAA/8AAgABAAAD/wP/AAIAAAP+AAIAAQAAA/8AAAAACAAAAAAFAAgAAAwAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAABAAAAAQAAA/0AAAABAAAAAgAAA/8AAAABAAAAAQAAAAEAAAP/AAAABQABAAAD/wP7AAMAAAACAAAD/wAAAAIAAAABAAAAAQAAA/wAAAP/AAAD/QAAAAAQAAAAAAUACAAADAAcACwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP7AAAABQAAA/wAAAADAAAAAAABAAAD/wABAAEAAAP/AAAAAwAAA/0AAwAEAAAD/wAAA/4AAAP/AAAUAAAAAAUACAAADAAcADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAAAAAABAAAD+wAAAAEAAAADAAAD/QAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAP/AAEAAwAAA/0AAAAFAAAD/wAAA/8AAAP9AAUAAQAAA/8AAQABAAAD/wAAAAAQAAAAAAUACAAADAAcACwARAAABAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAQAAAAAAAAABAAAAAAAAA/wAAAAFAAAAAAACAAAD/gACAAIAAAP+AAIAAgAAA/4AAgABAAAAAQAAA/4AAAAAHAAAAAAFAAgAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAAAAAAQAAA/8AAQADAAAD/QAAAAMAAAP9AAMAAQAAA/8AAQACAAAD/gAAAAIAAAP+AAIAAQAAA/8AAAAAFAAAAAAFAAgAAAwAHAAsAEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAAAAAAAAQAAA/wAAAABAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAAAAABAAAD/wABAAEAAAP/AAMAAwAAA/0D/gABAAAAAQAAAAMAAAP7AAUAAQAAA/8AAAAACAAAAAABAAYAAAwAHAAABAQEBAQEBAQAAAAAAQAAA/8AAAABAAAAAAACAAAD/gAEAAIAAAP+AAAMAAP+AAIABgAADAAcACwAAAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAEAAAP/AAAAAQAAA/4AAQAAA/8AAQADAAAD/QAFAAIAAAP+AAAAABwAAAAABgAHAAAMABwALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAP9AAAAAgAAA/wAAAACAAAD/QAAAAEAAAAAAAAAAgAAAAAAAAACAAAAAAAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAAAAAgAAAIABwAFAAAMABwAAAQEBAQEBAQEAAAAAAcAAAP5AAAABwAAAAIAAQAAA/8AAgABAAAD/wAAHAAAAAAGAAcAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAACAAAAAAAAAAIAAAAAAAAAAQAAA/0AAAACAAAD/AAAAAIAAAP9AAAAAQAAAAAAAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAAAAFAAAAAAEAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAA/8AAAABAAAAAAAAAAEAAAAAAAAAAQAAA/wAAAADAAAAAAABAAAD/wACAAIAAAP+AAIAAQAAA/8AAQACAAAD/gACAAEAAAP/AAAAACQAA/8ACQAIAAAMABwALAA8AGQAdACEAJQApAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAQAAAP7AAAAAQAAAAAAAAABAAAD/QAAAAEAAAACAAAAAgAAA/4AAAADAAAAAgAAAAAAAAABAAAD+AAAAAEAAAAFAAAAAQAAA/oAAAAFAAAD/wABAAAD/wABAAEAAAP/AAIAAwAAA/0D/wAFAAAD+wAAAAEAAAADAAAAAQAAA/wAAAP/AAEABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAgAAAAABgAIAAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAgAAAAEAAAABAAAD/wAAA/wAAAABAAAAAgAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gAADAAAAAAFAAgAAAwAHABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD/wAAAAEAAAP7AAAABAAAA/0AAAADAAAD/QAAAAMAAAABAAMAAAP9AAQAAgAAA/4D+wAIAAAD/wAAA/4AAAP/AAAD/QAAA/8AAAAAFAAAAAAGAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAABAAAA/sAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAAAAABAAAD/wABAAEAAAP/AAEABAAAA/wABAABAAAD/wABAAEAAAP/AAAAABAAAAAABgAIAAAMABwALABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAAAAAAAAEAAAP+AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAABAAEAAAP/AAEABAAAA/wABAABAAAD/wP6AAgAAAP/AAAD+gAAA/8AAAQAAAAABQAIAAAsAAAEBAQEBAQEBAQEBAQAAAAABQAAA/wAAAADAAAD/QAAAAQAAAAAAAgAAAP/AAAD/gAAA/8AAAP9AAAD/wAAAAAEAAAAAAUACAAAJAAABAQEBAQEBAQEBAAAAAAFAAAD/AAAAAQAAAP8AAAAAAAIAAAD/wAAA/4AAAP/AAAD/AAAFAAAAAAGAAgAAAwALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAwAAA/4AAAADAAAD+gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAAAQABAAAD/wP/AAEAAAACAAAAAQAAA/wAAgAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAAAABAAAAAAGAAgAACwAAAQEBAQEBAQEBAQEBAAAAAABAAAABAAAAAEAAAP/AAAD/AAAAAAACAAAA/0AAAADAAAD+AAAAAQAAAP8AAAAAAQAAAAAAwAIAAAsAAAEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAAAAAEAAAAGAAAAAQAAA/8AAAP6AAAD/wAAAAAIAAAAAAQACAAADAAkAAAEBAQEBAQEBAQEAAAAAAMAAAAAAAAD/gAAAAMAAAAAAAEAAAP/AAEABgAAAAEAAAP5AAAAABwAAAAABQAIAAAMABwALAA8AEwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD/gAAAAEAAAP+AAAAAQAAA/8AAAABAAAAAAAAAAEAAAP8AAAAAQAAAAEAAAP/AAAAAwAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAQABAAAD/wADAAEAAAP/AAEAAQAAA/8D+gAIAAAD/QAAA/4AAAP9AAcAAQAAA/8AAAAABAAAAAAEAAgAABQAAAQEBAQEBAAAAAABAAAAAwAAAAAACAAAA/kAAAP/AAAUAAAAAAcACAAADAAcACwARABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQDAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP7AAAAAgAAA/8AAAAFAAAD/wAAAAIAAAACAAIAAAP+AAIAAgAAA/4AAAACAAAD/gP8AAgAAAP+AAAD+gAAAAYAAAACAAAD+AAAAAAQAAAAAAYACAAADAAcADQATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQDAAAAAQAAA/4AAAABAAAD/QAAAAIAAAP/AAAAAwAAAAEAAAABAAAAAgACAAAD/gACAAIAAAP+A/wACAAAA/4AAAP6AAAAAgAAAAYAAAP4AAAgAAAAAAcACAAADAAcACwAPABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAgAAAAABQAIAAAMADQAAAQEBAQEBAQEBAQEBAQEBAAAAAEAAAP7AAAABAAAA/0AAAADAAAD/QAAAAQAAwAAA/0D/AAIAAAD/wAAA/0AAAP/AAAD/QAAAAAkAAP+AAcACAAADAAkADQARABUAGQAdACEAJQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAIAAAP9AAAD/gAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAQAAA/8AAQABAAAAAQAAA/4AAgABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAEAAAAAAGAAgAAAwAHAAsAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAUAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAP/AAAD/gAAAAAAAQAAA/8AAQABAAAD/wADAAMAAAP9A/wACAAAA/8AAAP9AAAD/gAAAAEAAAP9AAAUAAAAAAUACAAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAEAAAAAAAAAAEAAAP8AAAAAwAAA/wAAAABAAAAAAAAAAQAAAAAAAEAAAP/AAEAAwAAA/0AAwABAAAD/wABAAIAAAP+AAIAAQAAA/8AAAAABAAAAAAFAAgAABwAAAQEBAQEBAQEAgAAA/4AAAAFAAAD/gAAAAAABwAAAAEAAAP/AAAD+QAAAAAMAAAAAAYACAAADAAcACwAAAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAAAABQAAAAABQAIAAAMABwALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAEAAAP+AAAAAQAAAAEAAAABAAAD/AAAAAEAAAADAAAAAQAAAAAAAgAAA/4AAgADAAAD/QAAAAMAAAP9AAMAAwAAA/0AAAADAAAD/QAAAAAkAAAAAAkACAAADAAcACwAPABMAFwAbAB8AIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAA/gAAAABAAAAAwAAAAEAAAADAAAAAQAAAAAAAgAAA/4AAAACAAAD/gACAAMAAAP9AAAAAwAAA/0AAAADAAAD/QAAAAMAAAP9AAMAAwAAA/0AAAADAAAD/QAAAAMAAAP9AAAAACQAAAAABQAIAAAMABwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAAACAAAD/gAAAAIAAAP+AAIAAQAAA/8AAAABAAAD/wABAAIAAAP+AAIAAQAAA/8AAAABAAAD/wABAAIAAAP+AAAAAgAAA/4AAAAAFAAAAAAFAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAAAEAAAD/AAEAAIAAAP+AAAAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAAAABQAAAAABQAIAAAUACQANABEAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAABAAAA/wAAAABAAAAAAAAAAEAAAAAAAAAAQAAAAAAAAP8AAAABQAAAAAAAgAAA/8AAAP/AAIAAQAAA/8AAQACAAAD/gACAAEAAAP/AAEAAQAAAAEAAAP+AAAAAAQAA/4AAwAJAAAcAAAEBAQEBAQEBAAAAAADAAAD/gAAAAIAAAP+AAsAAAP/AAAD9wAAA/8AAAAADAAD/gADAAkAAAwAHAAsAAAEBAQEBAQEBAQEBAQCAAAAAQAAA/4AAAABAAAD/gAAAAEAAAP+AAMAAAP9AAMABQAAA/sABQADAAAD/QAAAAAEAAP+AAMACQAAHAAABAQEBAQEBAQAAAAAAgAAA/4AAAADAAAD/gABAAAACQAAAAEAAAP1AAAAABwAAAQABwAIAAAMABwALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gAAAAEAAAAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAAQAA/4ABgP/AAAMAAAEBAQEAAAAAAYAAAP+AAEAAAP/AAAAAAgAAAcAAgAJAAAMABwAAAQEBAQEBAQEAQAAAAEAAAP+AAAAAQAAAAcAAQAAA/8AAQABAAAD/wAADAAAAAAFAAYAAAwANABEAAAEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAD/QAAAAMAAAABAAAD/AAAAAMAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAD/wAACAAAAAAFAAkAAAwANAAABAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAABAAAAAwAAA/0AAAADAAAAAQAEAAAD/AP/AAkAAAP9AAAD/wAAA/wAAAP/AAAAAAwAAAAABAAGAAAMABwALAAABAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAAAAAADAAAAAAABAAAD/wABAAQAAAP8AAQAAQAAA/8AAAAACAAAAAAFAAkAAAwANAAABAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAD/QAAAAMAAAABAAAAAQAEAAAD/AP/AAEAAAAEAAAAAQAAAAMAAAP3AAAAABAAAAAABQAGAAAMABwARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAAAAAAAAQAAA/sAAAABAAAAAwAAAAEAAAP8AAAAAAAAAAMAAAAAAAEAAAP/AAEAAQAAA/8AAAAEAAAD/wAAAAEAAAP+AAAD/gAEAAEAAAP/AAAAAAgAAAAAAwAJAAAcACwAAAQEBAQEBAQEBAQEBAAAAAABAAAAAgAAA/4AAAAAAAAAAgAAAAAACAAAA/4AAAP/AAAD+wAIAAEAAAP/AAAMAAP+AAUABgAADAAcAEQAAAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAD/QAAAAMAAAP9AAAABAAAA/4AAQAAA/8AAwAEAAAD/AP+AAEAAAABAAAABAAAAAEAAAP5AAAIAAAAAAUACQAADAAsAAAEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAABAAAAAwAAA/0AAAAAAAUAAAP7AAAACQAAA/0AAAP/AAAD+wAACAAAAAABAAgAAAwAHAAABAQEBAQEBAQAAAAAAQAAA/8AAAABAAAAAAAGAAAD+gAHAAEAAAP/AAAMAAP+AAIACAAADAAkADQAAAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAD/wAAAAIAAAP/AAAAAQAAA/4AAQAAA/8AAQAGAAAAAQAAA/kACAABAAAD/wAAGAAAAAAFAAkAAAwAHAAsADwATABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAP+AAAAAQAAA/4AAAABAAAD/wAAAAEAAAAAAAAAAQAAA/wAAAABAAAAAQAAA/8AAAAAAAEAAAP/AAEAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8D+wAJAAAD+wAAA/8AAAP9AAAEAAAAAAEACQAADAAABAQEBAAAAAABAAAAAAAJAAAD9wAAAAAQAAAAAAcABgAADAAcADQARAAABAQEBAQEBAQEBAQEBAQEBAQEAwAAAAEAAAACAAAAAQAAA/kAAAADAAAD/gAAAAMAAAACAAAAAAAFAAAD+wAAAAUAAAP7AAAABgAAA/8AAAP7AAUAAQAAA/8AAAAACAAAAAAFAAYAAAwAJAAABAQEBAQEBAQEBAQAAAABAAAD+wAAAAQAAAP9AAAAAAAFAAAD+wAAAAYAAAP/AAAD+wAAAAAQAAAAAAUABgAADAAcACwAPAAABAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAACAAD/gAFAAYAAAwANAAABAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAAEAAAD/QAAAAMAAAP9AAAAAQAEAAAD/AP9AAgAAAP/AAAD/AAAA/8AAAP+AAAAAAgAA/4ABQAGAAAMADQAAAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAMAAAP9AAAABAAAAAEABAAAA/wD/QACAAAAAQAAAAQAAAABAAAD+AAAAAAIAAAAAAMABgAAHAAsAAAEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAP/AAAAAQAAAAEAAAAAAAYAAAP/AAAD/wAAA/wABQABAAAD/wAAEAAAAAAEAAYAAAwAJAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAAAAAAD/wAAAAIAAAP8AAAAAQAAAAEAAAP/AAAAAwAAAAAAAQAAA/8AAQABAAAAAQAAA/4AAgACAAAD/wAAA/8AAgABAAAD/wAACAAAAAADAAgAAAwALAAABAQEBAQEBAQEBAQEAQAAAAIAAAP9AAAAAQAAAAIAAAP+AAAAAAABAAAD/wABAAcAAAP+AAAD/wAAA/wAAAgAAAAABQAGAAAMACQAAAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oAAAAAFAAAAAAFAAYAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAAAABwAAAAABwAGAAAMABwALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP7AAAAAQAAAAIAAAABAAAAAgAAAAEAAAAAAAIAAAP+AAAAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAAABAAAA/wAAgACAAAD/gP+AAQAAAP8AAAAACQAAAAABQAGAAAMABwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAIAAAP+AAIAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAGAAD/gAFAAYAAAwAHAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAP+AAIAAAP+AAIAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAIAAgAAA/4AAAACAAAD/gAAEAAAAAAEAAYAABQAJAA0AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAEAAAAAAAAAAQAAAAAAAAP9AAAABAAAAAAAAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAD/wABAAEAAAABAAAD/gAAFAAD/gAEAAkAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQDAAAAAQAAA/4AAAABAAAD/QAAAAIAAAAAAAAAAQAAAAAAAAABAAAD/gABAAAD/wABAAQAAAP8AAQAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAAAAAQAA/4AAQAJAAAMAAAEBAQEAAAAAAEAAAP+AAsAAAP1AAAAABQAA/4ABAAJAAAMABwALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAQAAAAAAAAACAAAD/QAAAAEAAAP+AAAAAQAAA/4AAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAEABAAAA/wABAABAAAD/wAAAAAUAAACAAcABQAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAACAAAD+gAAAAEAAAACAAAAAQAAA/0AAAACAAAAAwAAAAEAAAACAAEAAAP/AAAAAgAAA/4AAQABAAAD/wABAAEAAAP/A/8AAgAAA/4AAAAACAAAAAABAAgAAAwAHAAABAQEBAQEBAQAAAAAAQAAA/8AAAABAAAAAAAGAAAD+gAHAAEAAAP/AAAIAAP+AAUACAAADABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAP/AAAAAQAAA/8AAAABAAAAAQAAAAIAAAP+AAAAAgAAA/4AAAABAAQAAAP8A/0AAgAAAAEAAAAEAAAAAQAAAAIAAAP+AAAD/wAAA/wAAAP/AAAD/gAACAAAAAAFAAgAADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAABAAAAAQAAAAIAAAP+AAAAAwAAA/0AAAADAAAAAAABAAAAAgAAAAEAAAADAAAD/QAAA/8AAAP+AAAD/wAHAAEAAAP/AAAYAAABAAUABgAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAwAAAAEAAAP+AAAD/wAAA/8AAAADAAAD/AAAAAEAAAADAAAAAQAAAAEAAQAAA/8AAAABAAAD/wACAAEAAAP/A/8AAwAAA/0AAwABAAAD/wAAAAEAAAP/AAAUAAAAAAUACAAALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAA/4AAAACAAAAAQAAAAIAAAP+AAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAAAAAIAAAABAAAAAgAAA/4AAAP/AAAD/gAFAAIAAAP+AAAAAgAAA/4AAgABAAAD/wAAAAEAAAP/AAAAAAgAA/4AAQAJAAAMABwAAAQEBAQEBAQEAAAAAAEAAAP/AAAAAQAAA/4ABQAAA/sABwAEAAAD/AAAIAAD/gAFAAgAAAwAHAAsADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAABAAAAAAAAAABAAAD/AAAAAMAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP8AAAAAQAAAAAAAAAEAAAD/gABAAAD/wABAAIAAAP+AAIAAQAAA/8AAQACAAAD/gAAAAIAAAP+AAIAAQAAA/8AAQACAAAD/gACAAEAAAP/AAAIAAAHAAMACAAADAAcAAAEBAQEBAQEBAAAAAABAAAAAQAAAAEAAAAHAAEAAAP/AAAAAQAAA/8AACwAA/8ACQAIAAAMABwALAA8AEwAXABsAHwAjACcAKwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAUAAAP6AAAAAQAAAAUAAAABAAAD+wAAAAMAAAP8AAAAAQAAA/0AAAABAAAAAgAAAAMAAAACAAAAAQAAA/gAAAABAAAABQAAAAEAAAP6AAAABQAAA/8AAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAQADAAAD/QP/AAUAAAP7AAQAAQAAA/8D/AAFAAAD+wAFAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAMAAADAAQACAAADAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAIAAAP+AAAAAgAAAAEAAAP8AAAAAwAAAAQAAQAAA/8D/wABAAAAAQAAAAEAAAABAAAD/AAEAAEAAAP/AAAoAAABAAUABgAADAAcACwAPABMAFwAbAB8AIwAnAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/AAAAAEAAAABAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP+AAAAAQAAAAEAAAABAAAAAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAABAAAAAAGAAQAABQAAAQEBAQEBAUAAAP7AAAABgAAAAAAAwAAAAEAAAP8AAAEAAADAAMABAAADAAABAQEBAAAAAADAAAAAwABAAAD/wAAAAAsAAP/AAkACAAADAAcACwAPABMAFwAjACcAKwAvADMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAUAAAP6AAAAAQAAAAUAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/kAAAABAAAAAgAAAAMAAAP+AAAAAgAAA/8AAAP/AAAABAAAAAEAAAP4AAAAAQAAAAUAAAABAAAD+gAAAAUAAAP/AAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAMAAQAAA/8D/QAFAAAD+wAAAAUAAAP/AAAD/wAAA/4AAAABAAAD/gAAAAUAAAP7AAUAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAAQAAAkABgAKAAAMAAAEBAQEAAAAAAYAAAAJAAEAAAP/AAAAABAAAAQABAAIAAAMABwALAA8AAAEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAEAAEAAAP/AAEAAgAAA/4AAAACAAAD/gACAAEAAAP/AAAEAAABAAcACAAAPAAABAQEBAQEBAQEBAQEBAQEBAAAAAADAAAD/QAAAAMAAAABAAAAAwAAA/0AAAADAAAAAQABAAAAAgAAAAEAAAADAAAD/QAAA/8AAAP+AAAD/wAAAAAMAAADAAMACAAAHAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAABAAAD/wAAAAEAAAP9AAAAAgAAAAMAAQAAAAEAAAP/AAAD/wACAAIAAAP+AAIAAQAAA/8AAAAAFAAAAwADAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAgAAAAAAAAABAAAD/gAAAAEAAAAAAAAAAQAAA/0AAAACAAAAAwABAAAD/wABAAEAAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAAAAAgAAAcAAgAJAAAMABwAAAQEBAQEBAQEAAAAAAEAAAAAAAAAAQAAAAcAAQAAA/8AAQABAAAD/wAACAAD/gAFAAYAABwAPAAABAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAgAAA/4AAAADAAAD/wAAAAEAAAABAAAD/gAIAAAD+wAAA/8AAAP+AAIAAQAAAAEAAAAEAAAD+gAABAAD/gAFAAgAADQAAAQEBAQEBAQEBAQEBAQEAgAAA/8AAAP/AAAAAQAAAAQAAAP/AAAD/wAAA/4ABQAAAAEAAAADAAAAAQAAA/YAAAAJAAAD9wAABAAABAABAAYAAAwAAAQEBAQAAAAAAQAAAAQAAgAAA/4AAAAACAMD/wAGAAEAAAwAHAAABAQEBAQEBAQDAAAAAgAAAAAAAAABAAAD/wABAAAD/wABAAEAAAP/AAAEAAADAAMACAAALAAABAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAQAAAAEAAAABAAAAAwABAAAAAgAAAAEAAAABAAAD/AAAA/8AAAAAEAAAAwAEAAgAAAwAHAAsADwAAAQEBAQEBAQEBAQEBAQEBAQBAAAAAgAAA/0AAAABAAAAAgAAAAEAAAP9AAAAAgAAAAMAAQAAA/8AAQADAAAD/QAAAAMAAAP9AAMAAQAAA/8AACgAAAEABQAGAAAMABwALAA8AEwAXABsAHwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP+AAAAAQAAAAEAAAABAAAD/AAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAkACAAADAAcACwAdACEAKQAtAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAP+AAAAAQAAAAEAAAP/AAAAAQAAAAEAAAABAAAD/wAAA/0AAAABAAAD+wAAA/8AAAABAAAAAQAAAAQAAAABAAAAAAABAAAD/wABAAIAAAP+AAIAAgAAA/4D/QABAAAAAgAAA/8AAAABAAAAAQAAAAEAAAP9AAAD/wAAA/8ABQACAAAD/gP+AAMAAAABAAAAAQAAA/sABAABAAAD/wAAJAAAAAAJAAgAAAwALAA8AEwAXABsAHwAnACsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAwAAAAEAAAABAAAAAQAAA/oAAAABAAAABAAAAAEAAAP7AAAAAQAAAAEAAAACAAAD/QAAAAEAAAP7AAAD/wAAAAEAAAABAAAABAAAAAEAAAAAAAEAAAP/AAAAAQAAAAEAAAP/AAAD/wABAAIAAAP+AAEAAgAAA/4AAQACAAAD/gABAAEAAAP/AAEAAgAAA/4D/gADAAAAAQAAAAEAAAP7AAQAAQAAA/8AAAAAKAAAAAAJAAgAAAwAHAAsAEQAjACcAKwAvADMANwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAEAAAAAAAAAAQAAA/wAAAADAAAAAQAAA/8AAAACAAAAAgAAA/4AAAABAAAAAQAAA/8AAAABAAAAAQAAAAEAAAP/AAAD+QAAAAIAAAAAAAAAAQAAAAEAAAABAAAD+gAAAAMAAAADAAAAAQAAAAAAAQAAA/8AAQACAAAD/gACAAEAAAP/AAAAAQAAAAEAAAP+A/0AAQAAAAIAAAP/AAAAAQAAAAEAAAABAAAD/QAAA/8AAAP/AAUAAQAAA/8AAQABAAAD/wP/AAIAAAP+AAIAAQAAA/8AAAABAAAD/wAAFAAAAAAEAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAAAAAAEAAAAAAAAAAQAAA/8AAAABAAAAAAABAAAD/wABAAIAAAP+AAIAAQAAA/8AAQACAAAD/gADAAEAAAP/AAAAABAAAAAABgALAAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAgAAAAEAAAABAAAD/wAAA/wAAAABAAAAAgAAA/8AAAABAAAD/gAAAAEAAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAA/4AAwABAAAD/wABAAEAAAP/AAAQAAAAAAYACwAAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP+AAAAAQAAAAAAAAABAAAAAAADAAAAAwAAA/0AAAADAAAD/QAAA/0AAAACAAAD/gAGAAIAAAP+AAMAAQAAA/8AAQABAAAD/wAAFAAAAAAGAAsAADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAACAAAAAQAAAAEAAAP/AAAD/AAAAAEAAAACAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAADAAAAAwAAA/0AAAADAAAD/QAAA/0AAAACAAAD/gAGAAIAAAP+AAMAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAABAAAAAABgALAAA8AEwAZAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP9AAAAAgAAA/8AAAABAAAAAQAAAAEAAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAA/4AAwACAAAD/wAAA/8AAAABAAAAAQAAA/4AABAAAAAABgAKAAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAgAAAAEAAAABAAAD/wAAA/wAAAABAAAAAgAAA/0AAAABAAAAAgAAAAEAAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAA/4AAwABAAAD/wAAAAEAAAP/AAAUAAAAAAYACwAAPABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAIAAQAAA/8AAAAACAAAAAAJAAgAAAwAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAMAAAP9AAAAAQAAAAIAAAP/AAAD/wAAAAcAAAP8AAAAAwAAA/0AAAAEAAAAAAADAAAD/QAAAAMAAAADAAAD/gAAAAMAAAP/AAAAAgAAA/8AAAP+AAAD/wAAA/0AAAP/AAAAABgAA/4ABgAIAAAMACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAACAAAAAAAAA/4AAAAEAAAD/wAAA/wAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/gABAAAD/wABAAEAAAABAAAD/wAAA/8AAgABAAAD/wABAAQAAAP8AAQAAQAAA/8AAQABAAAD/wAADAAAAAAFAAsAACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/4AAAABAAAD/gAAAAEAAAAAAAgAAAP/AAAD/gAAA/8AAAP9AAAD/wAJAAEAAAP/AAEAAQAAA/8AAAAADAAAAAAFAAsAACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/0AAAABAAAAAAAAAAEAAAAAAAgAAAP/AAAD/gAAA/8AAAP9AAAD/wAJAAEAAAP/AAEAAQAAA/8AAAAAEAAAAAAFAAsAACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAMAAAAAAUACgAALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAUAAAP8AAAAAwAAA/0AAAAEAAAD/AAAAAEAAAABAAAAAQAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AAAABAAAD/wAAAAAMAAAAAAMACwAALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAwAAA/8AAAABAAAD/gAAAAEAAAP+AAAAAQAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAQAAA/8AAQABAAAD/wAAAAAMAAAAAAMACwAALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAwAAA/8AAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAQAAA/8AAQABAAAD/wAAAAAQAAAAAAQACwAALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAwAAA/8AAAABAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAABgAAAAEAAAP/AAAD+gAAA/8ACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAwAAAAAAwAKAAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAP9AAAAAQAAAAEAAAABAAAAAAABAAAABgAAAAEAAAP/AAAD+gAAA/8ACQABAAAD/wAAAAEAAAP/AAAAABAAAAAABwAIAAAMABwALABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAAAAAAAAQAAA/4AAAABAAAD+wAAA/8AAAABAAAABAAAA/0AAAACAAAD/gAAAAMAAAABAAEAAAP/AAEABAAAA/wABAABAAAD/wP6AAQAAAABAAAAAwAAA/8AAAP+AAAD/wAAA/0AAAP/AAAYAAAAAAYACwAADAAcADQATABkAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAEAAAP+AAAAAQAAA/0AAAACAAAD/wAAAAMAAAABAAAAAQAAA/sAAAACAAAD/wAAAAEAAAABAAAAAQAAAAIAAgAAA/4AAgACAAAD/gP8AAgAAAP+AAAD+gAAAAIAAAAGAAAD+AAJAAIAAAP/AAAD/wAAAAEAAAABAAAD/gAAKAAAAAAHAAsAAAwAHAAsADwATABcAGwAfACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAUAAAABAAAD+gAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAP+AAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8AACgAAAAABwALAAAMABwALAA8AEwAXABsAHwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAAAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAsAAAAAAcACwAADAAcACwAPABMAFwAbAB8AIwAnACsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAKAAAAAAHAAsAAAwAHAAsADwATABcAGwAfACUAKwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAACAAAD/wAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAIAAAP/AAAD/wAAAAEAAAABAAAD/gAAKAAAAAAHAAoAAAwAHAAsADwATABcAGwAfACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAUAAAABAAAD+gAAAAEAAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAEAAAP/AAAAAQAAA/8AACQBAAEABgAGAAAMABwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAANAAAAAAHAAgAAAwAHAAsADwATABcAGwAfACMAJwArAC8AMwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAABAAAAAAAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAABAAAAAQAAAAAAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wABAAIAAAP+A/8ABAAAA/wAAwABAAAD/wP9AAQAAAP8AAQAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAFAAAAAAGAAsAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAEAAAP9AAAAAQAAA/4AAAABAAAAAAABAAAD/wABAAcAAAP5AAAABwAAA/kACAABAAAD/wABAAEAAAP/AAAAABQAAAAABgALAAAMABwALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAQAAAP7AAAAAQAAAAQAAAABAAAD/AAAAAEAAAAAAAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAYACwAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/sAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAUAAAAAAYACgAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/sAAAABAAAAAgAAAAEAAAAAAAEAAAP/AAEABwAAA/kAAAAHAAAD+QAIAAEAAAP/AAAAAQAAA/8AAAAAHAAAAAAFAAsAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAD/QAAAAEAAAAAAAAAAQAAAAAABAAAA/wABAACAAAD/gAAAAIAAAP+AAIAAgAAA/4AAAACAAAD/gADAAEAAAP/AAEAAQAAA/8AAAAACAAAAAAFAAgAAAwAPAAABAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAEAAAADAAAD/QAAAAMAAAP9AAAAAwACAAAD/gP9AAgAAAP+AAAD/wAAA/4AAAP/AAAD/gAAGAAAAAAFAAgAAAwAHAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAgAAAAAAAAABAAAD/QAAAAIAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAMAAAAAAAEAAAP/AAEAAwAAA/0AAwABAAAD/wP8AAcAAAP5AAUAAgAAA/4AAgABAAAD/wAAFAAAAAAFAAkAAAwANABEAFQAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAD/QAAAAMAAAABAAAD/AAAAAMAAAP/AAAAAQAAA/4AAAABAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAUAAAAAAUACQAADAA0AEQAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAP9AAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAAAAAAEAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAD/wACAAEAAAP/AAEAAQAAA/8AABgAAAAABQAJAAAMADQARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAFAAAAAAFAAkAAAwANABEAFwAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAIAAAP/AAAAAQAAAAEAAAABAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgACAAAD/wAAA/8AAAABAAAAAQAAA/4AABQAAAAABQAIAAAMADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAABAAAAAQAAAAEAAgAAA/4D/wABAAAAAgAAAAEAAAABAAAD+wAFAAEAAAP/AAIAAQAAA/8AAAABAAAD/wAAGAAAAAAFAAoAAAwANABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAP9AAAAAwAAAAEAAAP8AAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAAAQAAA/4AAgACAAAD/gAAAAIAAAP+AAIAAQAAA/8AABwAAAAACQAGAAAMABwALAA8AHwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAACAAAAAgAAAAAAAAABAAAD9wAAAAEAAAADAAAD/QAAAAMAAAABAAAAAwAAAAEAAAP8AAAAAQAAA/sAAAADAAAAAQAAAAMAAAAAAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAIAAAP+AAAAAgAAAAEAAAABAAAD/wAAAAEAAAP+AAAD/wAAA/8ABAABAAAD/wAAAAEAAAP/AAAAABAAA/4ABAAGAAAMACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAACAAAAAAAAA/8AAAADAAAD/wAAA/0AAAABAAAAAAAAAAMAAAP+AAEAAAP/AAEAAQAAAAEAAAP/AAAD/wACAAQAAAP8AAQAAQAAA/8AABgAAAAABQAJAAAMABwARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAAAAAAAAQAAA/sAAAABAAAAAwAAAAEAAAP8AAAAAAAAAAMAAAP+AAAAAQAAA/4AAAABAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAAAGAAAAAAFAAkAAAwAHABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAAAAAABAAAD+wAAAAEAAAADAAAAAQAAA/wAAAAAAAAAAwAAA/4AAAABAAAAAAAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAAAEAAAD/wAAAAEAAAP+AAAD/gAEAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAcAAAAAAUACQAADAAcAEQAVABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAGAAAAAAFAAgAAAwAHABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAAAAAABAAAD+wAAAAEAAAADAAAAAQAAA/wAAAAAAAAAAwAAA/0AAAABAAAAAQAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAAAEAAAD/wAAAAEAAAP+AAAD/gAEAAEAAAP/AAIAAQAAA/8AAAABAAAD/wAAAAAMAAAAAAIACQAADAAcACwAAAQEBAQEBAQEBAQEBAEAAAABAAAD/wAAAAEAAAP+AAAAAQAAAAAABgAAA/oABwABAAAD/wABAAEAAAP/AAAAAAwAAAAAAgAJAAAMABwALAAABAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAQAAAAAAAAABAAAAAAAGAAAD+gAHAAEAAAP/AAEAAQAAA/8AAAAAEAAAAAADAAkAAAwAHAAsADwAAAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP+AAAAAQAAAAAABgAAA/oABwABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAwAAAAAAwAIAAAMABwALAAABAQEBAQEBAQEBAQEAQAAAAEAAAP+AAAAAQAAAAEAAAABAAAAAAAGAAAD+gAHAAEAAAP/AAAAAQAAA/8AAAAAFAAAAAAFAAgAAAwAHAA8AEwAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAA/0AAAADAAAAAQAAA/wAAAABAAAAAQAAA/8AAAACAAAAAAABAAAD/wABAAMAAAP9AAAAAwAAAAEAAAABAAAD+wAFAAEAAAP/AAAAAQAAAAEAAAP+AAAQAAAAAAUACQAADAAkADwAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAQAAAP9AAAAAAAAAAIAAAP/AAAAAQAAAAEAAAABAAAAAAAFAAAD+wAAAAYAAAP/AAAD+wAHAAIAAAP/AAAD/wAAAAEAAAABAAAD/gAAAAAYAAAAAAUACQAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAP+AAAAAQAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAYAAAAAAUACQAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAAAAAAAAQAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAcAAAAAAUACQAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAUACQAADAAcACwAPABUAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAACAAAD/wAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgACAAAD/wAAA/8AAAABAAAAAQAAA/4AABgAAAAABQAIAAAMABwALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP9AAAAAQAAAAEAAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAAAAQAAA/8AAAwAAAAABwAHAAAMABwALAAABAQEBAQEBAQEBAQEAwAAAAEAAAP8AAAABwAAA/wAAAABAAAAAAACAAAD/gADAAEAAAP/AAIAAgAAA/4AAAAAFAAD/wAFAAcAAAwAHABEAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAABAAAD/gAAA/8AAAABAAAAAQAAAAIAAAAAAAAD/wAAA/4AAAADAAAAAQAAA/8AAAABAAAD/wABAAAD/wADAAIAAAP+A/4AAQAAAAQAAAP9AAAD/wAAA/8AAQADAAAAAQAAAAEAAAP/AAAD/AAFAAEAAAP/AAAAABAAAAAABQAJAAAMACQANABEAAAEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAQAAA/0AAAABAAAD/gAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAQABAAAD/wAAAAAQAAAAAAUACQAADAAkADQARAAABAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP9AAAAAQAAAAAAAAABAAAAAQAFAAAD+wP/AAEAAAAFAAAD+gAHAAEAAAP/AAEAAQAAA/8AAAAAFAAAAAAFAAkAAAwAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAABAAAD/AAAAAEAAAACAAAAAQAAA/0AAAACAAAAAQAFAAAD+wP/AAEAAAAFAAAD+gAHAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAEAAAAAAFAAgAAAwAJAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAABAAAD/AAAAAEAAAABAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oABwABAAAD/wAAAAEAAAP/AAAAACAAA/4ABQAJAAAMABwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAD/QAAAAEAAAAAAAAAAQAAA/4AAgAAA/4AAgACAAAD/gACAAIAAAP+AAAAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAMAAQAAA/8AAQABAAAD/wAACAAD/gAFAAkAAAwAPAAABAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAEAAAADAAAD/QAAAAMAAAP9AAAAAQAEAAAD/AP9AAsAAAP9AAAD/wAAA/wAAAP/AAAD/gAAIAAD/gAFAAgAAAwAHAAsADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gACAAAD/gACAAIAAAP+AAIAAgAAA/4AAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAwABAAAD/wAAAAEAAAP/AAAMAAAAAAYACgAAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP9AAAABAAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gADAAEAAAP/AAAAABAAAAAABQAIAAAMADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAQAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAD/wACAAEAAAP/AAAAABQAAAAABgALAAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAgAAAAEAAAABAAAD/wAAA/wAAAABAAAAAgAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gADAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAYAAAAAAUACQAADAA0AEQAVABkAHQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAP9AAAAAwAAAAEAAAP8AAAAAwAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAEAAgAAA/4D/wABAAAAAgAAAAEAAAABAAAD+wAFAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAAAAgAA/4ABwAIAABEAFQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQFAAAD/AAAA/8AAAABAAAAAQAAAAIAAAABAAAAAQAAAAEAAAP7AAAAAgAAA/4ABAAAA/4AAAADAAAAAwAAA/0AAAADAAAD/QAAA/wAAAP/AAgAAgAAA/4AAAAADAAD/gAGAAYAAAwARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAMAAAP9AAAAAwAAAAEAAAABAAAD+wAAAAMAAAABAAIAAAP+A/0AAgAAAAEAAAACAAAAAQAAAAEAAAP6AAAD/wAHAAEAAAP/AAAcAAAAAAYACwAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAAEAAAD+wAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAAAAAQAAAP9AAAAAQAAAAAAAAABAAAAAAABAAAD/wABAAEAAAP/AAEABAAAA/wABAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAUAAAAAAQACQAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAAAAAAAAwAAA/4AAAABAAAAAAAAAAEAAAAAAAEAAAP/AAEABAAAA/wABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAAAIAAAAAAGAAsAAAwAHAAsADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAABAAAA/sAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/AAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAEAAAP/AAEABAAAA/wABAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAYAAAAAAQACQAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAAAAAAAAwAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAIAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAYAAAAAAYACgAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAAEAAAD+wAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAAAAAQAAAP9AAAAAQAAAAAAAQAAA/8AAQABAAAD/wABAAQAAAP8AAQAAQAAA/8AAQABAAAD/wACAAEAAAP/AAAQAAAAAAQACAAADAAcACwAPAAABAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAAAAAAAAwAAA/4AAAABAAAAAAABAAAD/wABAAQAAAP8AAQAAQAAA/8AAgABAAAD/wAAIAAAAAAGAAsAAAwAHAAsADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAABAAAA/sAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/QAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAEAAAP/AAEABAAAA/wABAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAYAAAAAAUACQAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAAAAAAAAwAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAYACwAADAAcACwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAAAAAAAABAAAD/gAAAAEAAAP7AAAABAAAA/0AAAADAAAD/gAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAQABAAAD/wABAAQAAAP8AAQAAQAAA/8D+gAIAAAD/wAAA/oAAAP/AAkAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAAABAAAAAACAAJAAAMABwARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAFAAAAAQAAA/oAAAADAAAD/QAAAAMAAAABAAAAAgAAAAEAAAABAAQAAAP8AAUAAQAAA/8D+gABAAAABAAAAAEAAAADAAAD9wAHAAIAAAP+AAAAABAAAAAABwAIAAAMABwALABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAAAAAAAAQAAA/4AAAABAAAD+wAAA/8AAAABAAAABAAAA/0AAAACAAAD/gAAAAMAAAABAAEAAAP/AAEABAAAA/wABAABAAAD/wP6AAQAAAABAAAAAwAAA/8AAAP+AAAD/wAAA/0AAAP/AAAIAAAAAAYACQAADABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAD/gAAAAIAAAABAAAAAQAAA/8AAAABAAQAAAP8A/8AAQAAAAQAAAABAAAAAQAAAAEAAAABAAAD/wAAA/8AAAP5AAAAAAgAAAAABQAKAAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAABQAAA/wAAAADAAAD/QAAAAQAAAP8AAAABAAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AABQAAAAABQAIAAAMABwARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAAAAAAAAQAAA/sAAAABAAAAAwAAAAEAAAP8AAAAAAAAAAMAAAP9AAAABAAAAAAAAQAAA/8AAQABAAAD/wAAAAQAAAP/AAAAAQAAA/4AAAP+AAQAAQAAA/8AAgABAAAD/wAAEAAAAAAFAAsAACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAUACQAADAAcAEQAVABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/gAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAACAAAAAAFAAoAACwAPAAABAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/0AAAABAAAAAAAIAAAD/wAAA/4AAAP/AAAD/QAAA/8ACQABAAAD/wAAFAAAAAAFAAgAAAwAHABEAFQAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAAAAAABAAAD+wAAAAEAAAADAAAAAQAAA/wAAAAAAAAAAwAAA/4AAAABAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAAIAAP+AAUACAAADABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD/gAAA/0AAAAFAAAD/AAAAAMAAAP9AAAABAAAA/8AAAP+AAEAAAP/AAEAAQAAAAgAAAP/AAAD/gAAA/8AAAP9AAAD/wAAA/8AAAwAA/4ABQAGAAAkAEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAA/4AAAAEAAAD/wAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/gACAAAAAQAAA/8AAAP/AAAD/wADAAQAAAP/AAAAAQAAA/4AAAP+AAQAAQAAA/8AAAAAEAAAAAAFAAsAACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAUACQAADAAcAEQAVABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/gAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAIAAAAAAGAAsAAAwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAwAAA/4AAAADAAAD+gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD+wAAAAEAAAACAAAAAQAAA/0AAAACAAAAAQABAAAD/wP/AAEAAAACAAAAAQAAA/wAAgAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AABgAA/4ABQAJAAAMABwARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAP9AAAAAwAAA/0AAAAEAAAD/AAAAAEAAAACAAAAAQAAA/0AAAACAAAD/gABAAAD/wADAAQAAAP8A/4AAQAAAAEAAAAEAAAAAQAAA/kACAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAIAAAAAAGAAsAAAwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAwAAA/4AAAADAAAD+gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/AAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAQABAAAD/wP/AAEAAAACAAAAAQAAA/wAAgAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAAAQAAA/8AABgAA/4ABQAJAAAMABwARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAP9AAAAAwAAA/0AAAAEAAAD/QAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/gABAAAD/wADAAQAAAP8A/4AAQAAAAEAAAAEAAAAAQAAA/kACAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAGAAAAAAGAAoAAAwALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAwAAA/4AAAADAAAD+gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/QAAAAEAAAABAAEAAAP/A/8AAQAAAAIAAAABAAAD/AACAAQAAAP8AAQAAQAAA/8AAQABAAAD/wACAAEAAAP/AAAQAAP+AAUACAAADAAcAEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAD/QAAAAMAAAP9AAAABAAAA/0AAAABAAAD/gABAAAD/wADAAQAAAP8A/4AAQAAAAEAAAAEAAAAAQAAA/kACAABAAAD/wAAAAAUAAP+AAYACAAADABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAA/8AAAACAAAD/wAAAAMAAAP+AAAAAwAAA/4AAAP8AAAAAQAAAAAAAAABAAAAAAAAAAQAAAABAAEAAAP/A/0AAQAAAAEAAAABAAAAAgAAAAEAAAP8AAAD/gAEAAQAAAP8AAQAAQAAA/8AAQABAAAD/wAAFAAD/gAFAAkAAAwAHABEAFQAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAA/0AAAADAAAD/QAAAAQAAAP9AAAAAQAAAAAAAAABAAAD/gABAAAD/wADAAQAAAP8A/4AAQAAAAEAAAAEAAAAAQAAA/kACAABAAAD/wABAAEAAAP/AAAQAAAAAAYACwAALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAEAAAAAQAAA/8AAAP8AAAAAAAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAAIAAAD/QAAAAMAAAP4AAAABAAAA/wACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AABQAAAAABQALAAAMACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAEAAAADAAAD/QAAAAAAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAABAAAA/wAAAAJAAAD/AAAA/8AAAP8AAkAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAAgAAAAACAAIAAAMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAYAAAP8AAAD/wAAA/8AAAABAAAAAQAAAAQAAAABAAAAAQAAA/8AAAP/AAAD/AAAAAUAAQAAA/8D+wAGAAAAAQAAAAEAAAP/AAAAAQAAA/8AAAP/AAAD+gAAAAQAAAP8AAAIAAAAAAYACQAADABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAUAAAABAAAD+wAAA/8AAAABAAAAAQAAAAIAAAP+AAAAAwAAA/0AAAAAAAQAAAP8AAAABwAAAAEAAAABAAAD/wAAA/8AAAP+AAAD/wAAA/wAAAgAAAAAAwALAAAsAEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAP/AAAAAwAAA/8AAAABAAAD/QAAAAEAAAABAAAAAQAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAgAAA/8AAAABAAAD/gAADAAAAAAEAAkAAAwAJAA8AAAEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAP+AAAAAgAAA/8AAAABAAAAAQAAAAEAAAAAAAYAAAP6AAcAAgAAA/8AAAP/AAAAAQAAAAEAAAP+AAAAAAgAAAAAAwAKAAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAP9AAAAAwAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAQAAA/8AAAgAAAAAAwAIAAAMABwAAAQEBAQEBAQEAQAAAAEAAAP+AAAAAwAAAAAABgAAA/oABwABAAAD/wAACAAAAAADAAsAACwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAP9AAAAAQAAAAEAAAABAAAAAAABAAAABgAAAAEAAAP/AAAD+gAAA/8ACQACAAAD/wAAAAEAAAP+AAAIAAAAAAMACQAADAAsAAAEBAQEBAQEBAQEBAQBAAAAAQAAA/4AAAABAAAAAQAAAAEAAAAAAAYAAAP6AAcAAgAAA/8AAAABAAAD/gAACAAD/gADAAgAAAwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAA/4AAAP/AAAAAQAAA/8AAAADAAAD/wAAAAEAAAP/AAAD/gABAAAD/wABAAEAAAABAAAABgAAAAEAAAP/AAAD+gAAA/8AAAP/AAAMAAP+AAIACAAADAAcACwAAAQEBAQEBAQEBAQEBAEAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/4AAQAAA/8AAQAHAAAD+QAIAAEAAAP/AAAAAAgAAAAAAwAKAAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAP+AAAAAQAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAQAAA/8AAAQAAAAAAQAGAAAMAAAEBAQEAAAAAAEAAAAAAAYAAAP6AAAAAAwAAAAABwAIAAAMADwAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAACAAAD+gAAAAEAAAP/AAAAAwAAA/8AAAABAAAAAwAAA/8AAAACAAAAAAABAAAD/wAAAAEAAAAGAAAAAQAAA/8AAAP6AAAD/wABAAYAAAABAAAD+QAAFAAD/gAEAAgAAAwAHAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAACAAAD/QAAAAEAAAACAAAD/wAAAAIAAAP8AAAAAQAAAAIAAAABAAAD/gABAAAD/wACAAYAAAP6A/8ABgAAAAEAAAP5AAgAAQAAA/8AAAABAAAD/wAAFAAAAAAFAAsAAAwAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAADAAAAAAAAA/4AAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAYAAAABAAAD+QAIAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAFAAD/gADAAkAAAwAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAA/8AAAACAAAD/gAAAAEAAAABAAAAAQAAA/4AAAABAAAD/gABAAAD/wABAAYAAAABAAAD+QAIAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAJAAD/gAFAAgAAAwAHAAsADwATABcAGwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAAAAAAAAQAAAAAAAAABAAAD/gAAAAEAAAP+AAAAAQAAA/8AAAABAAAAAAAAAAEAAAP8AAAAAQAAAAEAAAP/AAAAAwAAAAEAAAP+AAEAAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAwABAAAD/wABAAEAAAP/A/oACAAAA/0AAAP+AAAD/QAHAAEAAAP/AAAAACAAA/4ABQAJAAAMABwALAA8AEwAXABsAIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAACAAAAAAAAAAEAAAABAAAAAQAAA/4AAAABAAAD/gAAAAEAAAP/AAAAAQAAAAAAAAABAAAD/AAAAAEAAAABAAAD/wAAA/4AAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8D+wAJAAAD+wAAA/8AAAP9AAAUAAAAAAQABgAADAAcACwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQDAAAAAQAAA/4AAAABAAAD/wAAAAEAAAP9AAAAAQAAAAEAAAP/AAAAAgAAAAEAAAAAAAEAAAP/AAEAAgAAA/4AAwABAAAD/wP8AAYAAAP+AAAD/wAAA/0ABQABAAAD/wAAAAAMAAAAAAQACwAAFAAkADQAAAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAEAAAAAAAAAAQAAAAAACAAAA/kAAAP/AAkAAQAAA/8AAQABAAAD/wAADAAAAAACAAsAAAwAHAAsAAAEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAABAAAAAAAAAAEAAAAAAAgAAAP4AAkAAQAAA/8AAQABAAAD/wAAAAAIAAP+AAQACAAADAA0AAAEBAQEBAQEBAQEBAQEBAAAAAACAAAAAAAAA/4AAAABAAAAAwAAA/8AAAP+AAEAAAP/AAEAAQAAAAgAAAP5AAAD/wAAA/8AAAAADAAD/gADAAkAAAwAHAAsAAAEBAQEBAQEBAQEBAQAAAAAAgAAAAAAAAABAAAD/gAAAAEAAAP+AAEAAAP/AAEAAQAAA/8AAQAJAAAD9wAAAAAMAAAAAAQACQAADAAkADQAAAQEBAQEBAQEBAQEBAQEAgAAAAEAAAP9AAAAAQAAAAMAAAP/AAAAAQAAAAYAAQAAA/8D+gAIAAAD+QAAA/8ABwACAAAD/gAADAAAAAAEAAkAAAwAHAAsAAAEBAQEBAQEBAQEBAQCAAAAAQAAA/0AAAABAAAAAgAAAAEAAAAGAAEAAAP/A/oACQAAA/cABwACAAAD/gAAAAAIAAAAAAQACAAADAAkAAAEBAQEBAQEBAQEAwAAAAEAAAP8AAAAAQAAAAMAAAACAAIAAAP+A/4ACAAAA/kAAAP/AAAAAAgAAAAAAwAJAAAMABwAAAQEBAQEBAQEAgAAAAEAAAP9AAAAAQAAAAMAAgAAA/4D/QAJAAAD9wAABAAAAAAFAAgAADQAAAQEBAQEBAQEBAQEBAQEAQAAA/8AAAABAAAAAQAAAAEAAAP/AAAAAwAAAAAAAwAAAAEAAAAEAAAD/gAAA/8AAAP8AAAD/wAABAAAAAADAAgAACwAAAQEBAQEBAQEBAQEBAEAAAP/AAAAAQAAAAEAAAABAAAD/wAAAAAAAwAAAAEAAAAEAAAD/gAAA/8AAAP7AAAAABgAAAAABgALAAAMABwANABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAMAAAABAAAD/gAAAAEAAAP9AAAAAgAAA/8AAAADAAAAAQAAAAEAAAP9AAAAAQAAAAAAAAABAAAAAgACAAAD/gACAAIAAAP+A/wACAAAA/4AAAP6AAAAAgAAAAYAAAP4AAkAAQAAA/8AAQABAAAD/wAAEAAAAAAFAAkAAAwAJAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAQAAAP9AAAAAQAAAAEAAAAAAAAAAQAAAAAABQAAA/sAAAAGAAAD/wAAA/sABwABAAAD/wABAAEAAAP/AAAAABgAA/4ABgAIAAAMABwALAA8AFQAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAACAAAAAAAAAAEAAAP/AAAAAQAAA/4AAAABAAAD/QAAAAIAAAP/AAAAAwAAAAEAAAABAAAD/gABAAAD/wABAAEAAAP/AAMAAgAAA/4AAgACAAAD/gP8AAgAAAP+AAAD+gAAAAIAAAAGAAAD+AAAEAAD/gAFAAYAAAwAHAAsAEQAAAQEBAQEBAQEBAQEBAQEBAQEBAEAAAACAAAAAAAAAAEAAAAAAAAAAQAAA/sAAAAEAAAD/QAAA/4AAQAAA/8AAQABAAAD/wABAAUAAAP7AAAABgAAA/8AAAP7AAAAABwAAAAABgALAAAMABwANABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAMAAAABAAAD/gAAAAEAAAP9AAAAAgAAA/8AAAADAAAAAQAAAAEAAAP8AAAAAgAAA/0AAAABAAAAAgAAAAEAAAACAAIAAAP+AAIAAgAAA/4D/AAIAAAD/gAAA/oAAAACAAAABgAAA/gACQABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAFAAAAAAFAAkAAAwAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD+wAAAAQAAAP9AAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAAFAAAD+wAAAAYAAAP/AAAD+wAHAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAEAAAAAAHAAkAAAwAJAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAYAAAABAAAD+wAAAAQAAAP9AAAD/QAAAAEAAAAAAAAAAQAAAAAABQAAA/sAAAAGAAAD/wAAA/sABgABAAAD/wABAAIAAAP+AAAAABQAA/4ABgAIAAAMABwALABEAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAIAAAP+AAAAAQAAA/4AAAABAAAD/QAAAAIAAAP/AAAABAAAA/8AAAABAAAAAQAAA/4AAQAAA/8ABAACAAAD/gACAAIAAAP+A/wACAAAA/4AAAP6A/8AAQAAAAIAAAAGAAAD9wAAEAAD/gAFAAYAAAwAHAAsAEQAAAQEBAQEBAQEBAQEBAQEBAQEBAEAAAACAAAAAAAAAAEAAAAAAAAAAQAAA/sAAAAEAAAD/QAAA/4AAQAAA/8AAQABAAAD/wABAAUAAAP7AAAABgAAA/8AAAP7AAAAACQAAAAABwAKAAAMABwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAAEAAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAAAAFAAAAAAFAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAAEAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAAAACwAAAAABwALAAAMABwALAA8AEwAXABsAHwAjACcAKwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAcAAAAAAUACQAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAwAAAAAAcACwAADAAcACwAPABMAFwAbAB8AIwAnACsALwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP9AAAAAQAAAAEAAAABAAAD/gAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAgAAAAAAUACQAADAAcACwAPABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAABAAAAAQAAA/4AAAABAAAAAQAAAAEAAAAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAIAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AABAAAAAACgAIAAAMABwALABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAAAAAMAAAP9AAAACAAAA/wAAAADAAAD/QAAAAQAAAABAAEAAAP/AAEABAAAA/wABAABAAAD/wP6AAEAAAAGAAAAAQAAA/8AAAP+AAAD/wAAA/0AAAP/AAAYAAAAAAkABgAADAAcACwAVABkAHQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAQAAAAQAAAP3AAAAAQAAAAMAAAABAAAAAwAAAAEAAAP8AAAD/AAAAAMAAAABAAAAAwAAAAAAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wAAAAEAAAP/AAAAABgAAAAABgALAAAMABwALABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQFAAAAAQAAA/4AAAABAAAD/wAAAAEAAAP7AAAABAAAA/0AAAADAAAD/wAAA/4AAAABAAAAAQAAAAAAAAABAAAAAAABAAAD/wABAAEAAAP/AAMAAwAAA/0D/AAIAAAD/wAAA/0AAAP+AAAAAQAAA/0ACQABAAAD/wABAAEAAAP/AAAQAAAAAAMACQAAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAP/AAAAAQAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAAGAAAD/wAAA/8AAAP8AAUAAQAAA/8AAgABAAAD/wABAAEAAAP/AAAYAAP+AAYACAAADAAcACwAPABMAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAAAAAAAAQAAAAEAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAP/AAAD/gAAA/4AAQAAA/8AAQABAAAD/wABAAEAAAP/AAEAAQAAA/8AAwADAAAD/QP8AAgAAAP/AAAD/QAAA/4AAAABAAAD/QAAEAAD/gAEAAYAAAwAHAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAIAAAAAAAAAAQAAA/4AAAABAAAAAQAAA/8AAAABAAAAAQAAA/4AAQAAA/8AAQABAAAD/wABAAYAAAP/AAAD/wAAA/wABQABAAAD/wAAEAAAAAAGAAgAAAwAHAAsAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAUAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAP/AAAD/gAAAAAAAQAAA/8AAQABAAAD/wADAAMAAAP9A/wACAAAA/8AAAP9AAAD/gAAAAEAAAP9AAAUAAAAAAQACQAAHAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAP/AAAAAQAAAAEAAAP+AAAAAgAAA/0AAAABAAAAAgAAAAEAAAAAAAYAAAP/AAAD/wAAA/wABQABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAcAAAAAAUACwAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAEAAAAAAAAAAEAAAP8AAAAAwAAA/wAAAABAAAAAAAAAAQAAAP9AAAAAQAAAAAAAAABAAAAAAABAAAD/wABAAMAAAP9AAMAAQAAA/8AAQACAAAD/gACAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAQACQAADAAkADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAwAAAAAAAAP/AAAAAgAAA/wAAAABAAAAAQAAA/8AAAADAAAD/gAAAAEAAAAAAAAAAQAAAAAAAQAAA/8AAQABAAAAAQAAA/4AAgACAAAD/wAAA/8AAgABAAAD/wACAAEAAAP/AAEAAQAAA/8AACAAAAAABQALAAAMABwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAQAAAAAAAAAAQAAA/wAAAADAAAD/AAAAAEAAAAAAAAABAAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAA/8AAQADAAAD/QADAAEAAAP/AAEAAgAAA/4AAgABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAHAAAAAAEAAkAAAwAJAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAAAAAAD/wAAAAIAAAP8AAAAAQAAAAEAAAP/AAAAAwAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAA/8AAQABAAAAAQAAA/4AAgACAAAD/wAAA/8AAgABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAYAAP+AAUACAAADAAkADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAAAAAAD/QAAAAQAAAAAAAAAAQAAA/wAAAADAAAD/AAAAAEAAAAAAAAABAAAA/4AAQAAA/8AAQABAAAAAQAAA/4AAgADAAAD/QADAAEAAAP/AAEAAgAAA/4AAgABAAAD/wAAAAAQAAP+AAQABgAAHAA0AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAIAAAP+AAAAAwAAAAAAAAP/AAAAAgAAA/wAAAABAAAAAQAAA/8AAAADAAAD/gABAAAAAQAAAAEAAAP9AAMAAQAAAAEAAAP+AAIAAgAAA/8AAAP/AAIAAQAAA/8AACAAAAAABQALAAAMABwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAQAAAAAAAAAAQAAA/wAAAADAAAD/AAAAAEAAAAAAAAABAAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQADAAAD/QADAAEAAAP/AAEAAgAAA/4AAgABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAHAAAAAAEAAkAAAwAJAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAAAAAAD/wAAAAIAAAP8AAAAAQAAAAEAAAP/AAAAAwAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQABAAAAAQAAA/4AAgACAAAD/wAAA/8AAgABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAMAAP+AAUACAAADAAcADwAAAQEBAQEBAQEBAQEBAQEBAQBAAAAAgAAAAAAAAABAAAD/gAAA/4AAAAFAAAD/gAAA/4AAQAAA/8AAQABAAAD/wABAAcAAAABAAAD/wAAA/kAAAAACAAD/gADAAgAABwAPAAABAQEBAQEBAQEBAQEBAQEBAAAAAACAAAD/wAAAAIAAAP9AAAAAQAAAAIAAAP+AAAD/gABAAAAAQAAAAEAAAP9AAMABwAAA/4AAAP/AAAD/AAAEAAAAAAFAAsAABwALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAA/4AAAAFAAAD/gAAA/8AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAABwAAAAEAAAP/AAAD+QAJAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAEAAAAAAFAAkAAAwAHAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAAAAAAAAQAAA/wAAAABAAAAAgAAA/4AAAADAAAAAQAAAAAAAQAAA/8ABgABAAAD/wP7AAcAAAP+AAAD/wAAA/wABgACAAAD/gAABAAAAAAFAAgAADwAAAQEBAQEBAQEBAQEBAQEBAQCAAAD/wAAAAEAAAP+AAAABQAAA/4AAAABAAAD/wAAAAAABAAAAAEAAAACAAAAAQAAA/8AAAP+AAAD/wAAA/wAAAAACAAAAAADAAgAAAwAPAAABAQEBAQEBAQEBAQEBAQEBAEAAAACAAAD/QAAAAEAAAACAAAD/gAAAAIAAAP+AAAAAAABAAAD/wABAAcAAAP+AAAD/wAAA/8AAAP/AAAD/gAAFAAAAAAGAAsAAAwAHAAsAEQAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAQAAAP7AAAAAQAAAAQAAAABAAAD+wAAAAIAAAP/AAAAAQAAAAEAAAABAAAAAAABAAAD/wABAAcAAAP5AAAABwAAA/kACAACAAAD/wAAA/8AAAABAAAAAQAAA/4AAAAAEAAAAAAFAAkAAAwAJAA8AFQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAQAAA/wAAAACAAAD/wAAAAEAAAABAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oABwACAAAD/wAAA/8AAAABAAAAAQAAA/4AAAAAEAAAAAAGAAoAAAwAHAAsADwAAAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAEAAAP7AAAABAAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAAwAAAAABQAIAAAMACQANAAABAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAQAAA/wAAAAEAAAAAQAFAAAD+wP/AAEAAAAFAAAD+gAHAAEAAAP/AAAYAAAAAAYACwAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/wAAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAUAAAAAAUACQAADAAkADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAYACwAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/0AAAABAAAD/gAAAAEAAAABAAAAAQAAA/4AAAABAAAAAAABAAAD/wABAAcAAAP5AAAABwAAA/kABwABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAUACQAADAAkADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP9AAAAAQAAA/4AAAABAAAAAQAAAAEAAAP+AAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oABgABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAcAAAAAAYACwAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/sAAAABAAAAAQAAAAEAAAP+AAAAAQAAAAEAAAABAAAAAAABAAAD/wABAAcAAAP5AAAABwAAA/kACAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAYAAAAAAUACQAADAAkADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gAAAAEAAAABAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oABwABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAQAAP+AAYACAAADAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAgAAA/0AAAP+AAAABAAAA/8AAAP8AAAAAQAAAAQAAAABAAAD/gABAAAD/wABAAEAAAABAAAD/wAAA/8AAgAHAAAD+QAAAAcAAAP5AAAIAAP+AAYABgAADAA0AAAEBAQEBAQEBAQEBAQEBAAAAAABAAAAAwAAA/0AAAADAAAAAQAAAAEAAAABAAUAAAP7A/0AAgAAAAEAAAAFAAAD+QAAA/8AAAAAMAAAAAAJAAsAAAwAHAAsADwATABcAGwAfACMAJwArAC8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAAAMAAAABAAAD+gAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAP4AAAAAQAAAAMAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAIAAAP+AAAAAgAAA/4AAgADAAAD/QAAAAMAAAP9AAAAAwAAA/0AAAADAAAD/QADAAMAAAP9AAAAAwAAA/0AAAADAAAD/QAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAKAAAAAAHAAkAAAwAHAAsADwATABcAGwAfACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAMAAAABAAAD/AAAAAEAAAABAAAAAQAAA/sAAAABAAAAAgAAAAEAAAACAAAAAQAAA/sAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAgAAA/4AAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAAAEAAAD/AACAAIAAAP+A/4ABAAAA/wABQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AACAAAAAABQALAAAMABwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAEAAAP+AAAAAQAAAAEAAAABAAAD/AAAAAEAAAADAAAAAQAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAABAAAA/wABAACAAAD/gAAAAIAAAP+AAIAAgAAA/4AAAACAAAD/gADAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAJAAD/gAFAAkAAAwAHAAsADwATABcAGwAfACMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAQAAAAIAAAABAAAD/QAAAAIAAAP+AAIAAAP+AAIAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAIAAgAAA/4AAAACAAAD/gADAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAcAAAAAAUACgAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAAAEAAAD/AAEAAIAAAP+AAAAAgAAA/4AAgACAAAD/gAAAAIAAAP+AAMAAQAAA/8AAAABAAAD/wAAAAAcAAAAAAUACwAAFAAkADQARABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAQAAAP8AAAAAQAAAAAAAAABAAAAAAAAAAEAAAAAAAAD/AAAAAUAAAP9AAAAAQAAAAAAAAABAAAAAAACAAAD/wAAA/8AAgABAAAD/wABAAIAAAP+AAIAAQAAA/8AAQABAAAAAQAAA/4AAwABAAAD/wABAAEAAAP/AAAAABgAAAAABAAJAAAUACQANABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAwAAA/0AAAABAAAAAAAAAAEAAAAAAAAD/QAAAAQAAAP9AAAAAQAAAAAAAAABAAAAAAACAAAD/wAAA/8AAgABAAAD/wABAAEAAAP/AAEAAQAAAAEAAAP+AAMAAQAAA/8AAQABAAAD/wAAGAAAAAAFAAoAABQAJAA0AEQAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAEAAAD/AAAAAEAAAAAAAAAAQAAAAAAAAABAAAAAAAAA/wAAAAFAAAD/QAAAAEAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAgAAA/4AAgABAAAD/wABAAEAAAABAAAD/gADAAEAAAP/AAAUAAAAAAQACAAAFAAkADQATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAMAAAP9AAAAAQAAAAAAAAABAAAAAAAAA/0AAAAEAAAD/gAAAAEAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAQAAA/8AAQABAAAAAQAAA/4AAwABAAAD/wAAAAAgAAAAAAUACwAAFAAkADQARABcAGwAfACMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAQAAAP8AAAAAQAAAAAAAAABAAAAAAAAAAEAAAAAAAAD/AAAAAUAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAgAAA/4AAgABAAAD/wABAAEAAAABAAAD/gADAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAHAAAAAAEAAkAABQAJAA0AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAEAAAAAAAAAAQAAAAAAAAP9AAAABAAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAD/wABAAEAAAABAAAD/gADAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAIAQAAAAQACAAADAAcAAAEBAQEBAQEBAEAAAABAAAAAAAAAAIAAAAAAAcAAAP5AAcAAQAAA/8AAAv/AAAABQAJAAAMAFQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAP/AAAAAQAAAAEAAAACAAAD/gAAAAMAAAP9AAAAAwAAAAEABAAAA/wD/wAHAAAAAQAAAAEAAAP/AAAD/wAAA/8AAAP/AAAD/AAAA/8AAAAAEAAAAAAIAAgAAAwAHAAsAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBwAAAAEAAAP4AAAAAQAAAAYAAAABAAAD+gAAA/8AAAAGAAAD/AAAAAQAAAP8AAAABAAAAAEAAwAAA/0ABAACAAAD/gAAAAIAAAP+A/sABwAAAAEAAAP/AAAD/gAAA/8AAAP9AAAD/wAAAAAIAAAAAAYACAAADAA8AAAEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAP6AAAABgAAA/sAAAAEAAAD/AAAAAQAAAABAAMAAAP9A/8ACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAAIAAAAAAUACQAADAA8AAAEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAP7AAAABQAAA/wAAAADAAAD/QAAAAMAAAABAAQAAAP8A/8ACQAAA/8AAAP+AAAD/wAAA/wAAAP/AAAL/wAAAAYACAAADABEAAAEBAQEBAQEBAQEBAQEBAQEBAQFAAAAAQAAA/oAAAP/AAAAAQAAAAEAAAAEAAAD/AAAAAQAAAABAAMAAAP9A/8ABgAAAAEAAAABAAAD/QAAA/8AAAP9AAAD/wAAAAAL/wAAAAUACQAADABEAAAEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAP/AAAAAQAAAAEAAAADAAAD/QAAAAMAAAABAAQAAAP8A/8ABwAAAAEAAAABAAAD/QAAA/8AAAP8AAAD/wAAAAAUAAAAAAYACAAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAEAAAAAAAAAAEAAAAAAAAAAQAAA/4AAAABAAAD+wAAAAQAAAAAAAEAAAP/AAEAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAAAAGAAAAAAIAAkAAAwAHAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAABAAAA/sAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAAAAAAAAIAAAAAAAEAAAP/AAEAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAQABAAAD/wAAEAAAAAAFAAgAAAwAHAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAAAAAAAAgAAAAEAAAAAAAAAAQAAAAAAAQAAA/8AAQAEAAAD/AAEAAEAAAABAAAD/gACAAEAAAP/AAAAABP/AAAABgAIAAAMABwALABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAAAAAAAAQAAA/4AAAABAAAD+wAAA/8AAAABAAAABAAAA/0AAAACAAAD/gAAAAMAAAABAAEAAAP/AAEABAAAA/wABAABAAAD/wP6AAQAAAABAAAAAwAAA/8AAAP+AAAD/wAAA/0AAAP/AAAUAAAAAAgACAAADAAcACwAPABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAYAAAABAAAAAAAAAAEAAAP4AAAAAQAAAAUAAAABAAAD+wAAA/8AAAAFAAAD/QAAAAMAAAABAAEAAAP/AAEABAAAA/wAAwACAAAD/gABAAEAAAP/A/oABwAAAAEAAAP/AAAD+gAAA/8AAAgAAAAABgAIAAAMADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAAEAAAD/AAAAAQAAAP7AAAABgAAAAEAAwAAA/0D/wABAAAAAwAAAAEAAAACAAAAAQAAA/gAAAgAAAAABQAJAAAMADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAD/QAAAAMAAAP9AAAABAAAAAEABAAAA/wD/wABAAAABAAAAAEAAAACAAAAAQAAA/cAABQAA/4ABQAHAAAUADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAABAAAD/gAAA/8AAAADAAAD/wAAA/0AAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAQAAAAEAAAP+AAIAAQAAAAEAAAP/AAAD/wACAAQAAAP8AAAABAAAA/wABAABAAAD/wAABAAAAAAGAAgAACwAAAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAQAAAP7AAAABgAAAAAAAQAAAAIAAAABAAAAAwAAAAEAAAP4AAAAABgAAAAABwAIAAAMABwALABUAGQAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP6AAAABgAAAAEAAAP/AAAD+wAAAAQAAAABAAAD+wAAAAQAAAP9AAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQACAAAAAgAAA/wAAAABAAAD/wAEAAEAAAP/AAAAAgAAA/8AAAP/AAAcAAAAAAYACAAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAAAAAAAAEAAAP6AAAAAQAAAAAAAAADAAAD/AAAAAEAAAAEAAAAAQAAA/sAAAAEAAAAAAABAAAD/wABAAEAAAP/AAAAAwAAA/0AAwABAAAD/wABAAIAAAP+AAEAAQAAA/8AAQABAAAD/wAAAAAL/gP+AAYACAAADAA0AAAEBAQEBAQEBAQEBAQEB/4AAAACAAAAAAAAAAYAAAP7AAAABAAAA/wAAAP+AAEAAAP/AAEACQAAA/8AAAP+AAAD/wAAA/sAAAAAE/8D/wAFAAgAAAwAHABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB/8AAAACAAAAAAAAAAEAAAAAAAAD/wAAAAEAAAABAAAAAQAAA/8AAAAAAAAAAgAAA/8AAQAAA/8AAQACAAAD/gACAAIAAAABAAAAAgAAA/4AAAP/AAAD/gAFAAEAAAP/AAAYAAAAAAgACQAADAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAADAAAD/gAAAAMAAAP6AAAAAQAAAAAAAAABAAAAAAAAAAQAAAAAAAAAAgAAAAEAAQAAA/8D/wABAAAAAgAAAAEAAAP8AAIABAAAA/wABAABAAAD/wABAAEAAAP/AAEAAQAAA/8AACgAA/4ACAAIAAAMABwALAA8AEwAXABsAHwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAP9AAAAAQAAAAIAAAABAAAD+wAAAAEAAAAEAAAAAQAAA/kAAAABAAAABgAAAAEAAAP+AAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAMAAAP9AAMAAgAAA/4AAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAgABAAAD/wAAAAEAAAP/AAAQAAAAAAkACQAADAAcACwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQFAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP3AAAAAQAAAAMAAAP9AAAAAAABAAAD/wABAAQAAAP8AAAABQAAA/sD/wAJAAAD/QAAA/8AAAP7AAAEAAAAAAEACQAADAAABAQEBAAAAAABAAAAAAAJAAAD9wAAAAAEAAAAAAMACAAATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAABAAAD/wAAAAMAAAP/AAAAAQAAA/8AAAABAAAAAAABAAAAAwAAAAEAAAACAAAAAQAAA/8AAAP+AAAD/wAAA/0AAAP/AAAAACAAAAAABQAIAAAMABwALAA8AFwAbAB8AIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAD/gAAAAEAAAP+AAAAAQAAA/8AAAABAAAD/QAAAAEAAAABAAAD/wAAAAIAAAABAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQABAAAD/wABAAEAAAP/AAMAAQAAA/8D+wAHAAAD/gAAA/4AAAP9AAYAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAUACQAADAAcACwAPABMAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/4AAAABAAAD/gAAAAEAAAP/AAAAAQAAAAAAAAABAAAD/AAAAAEAAAABAAAD/wAAAAAAAAACAAAAAAABAAAD/wABAAEAAAP/AAEAAQAAA/8AAgABAAAD/wABAAEAAAP/A/sACAAAA/wAAAP/AAAD/QAIAAEAAAP/AAAAAAQAAAAAAwAJAAAsAAAEBAQEBAQEBAQEBAQBAAAD/wAAAAEAAAABAAAAAQAAA/8AAAAAAAQAAAABAAAABAAAA/wAAAP/AAAD/AAAAAAYAAAAAAYACQAADAAcACwAPABUAHQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAABAAAAAEAAAP7AAAAAQAAAAIAAAABAAAD/QAAAAEAAAABAAAD/AAAAAIAAAACAAAD/wAAAAAAAQAAA/8AAAABAAAD/wABAAIAAAP+AAAAAgAAA/4AAgACAAAAAQAAA/0AAwABAAAAAgAAA/8AAAP+AAAAABQAAAAACQAIAAAMABwALABEAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAIAAAACAAAAAgAAA/kAAAABAAAAAgAAAAEAAAABAAAAAwAAA/8AAAABAAAAAQAAAAAAAQAAA/8AAAABAAAD/wABAAcAAAP5AAAAAQAAAAYAAAP5A/8AAQAAAAEAAAAGAAAD+AAAF/4D/gAGAAgAAAwAHAAsAEQAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/gAAAAIAAAADAAAAAQAAA/4AAAABAAAD/QAAAAIAAAP/AAAAAwAAAAEAAAABAAAD/gABAAAD/wAEAAIAAAP+AAIAAgAAA/4D+wAJAAAD/gAAA/kAAQACAAAABgAAA/gAAAAACAAD/gAFAAYAAAwAJAAABAQEBAQEBAQEBAQAAAABAAAD+wAAAAQAAAP9AAAD/gAHAAAD+QACAAYAAAP/AAAD+wAAAAAcAAAAAAcACAAADAAcACwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/8AAAP7AAAAAAAAAAEAAAADAAAAAQAAA/wAAAADAAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQAEAAAD/wAAAAEAAAP8AAAAAgAAA/4ABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAIAAAAAAIAAgAAAwAHAAsADwATABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAAAAAAAAEAAAAEAAAD/wAAAAIAAAP7AAAAAwAAAAIAAAABAAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQAEAAAD/AAEAAEAAAP/A/wABAAAAAEAAAP7AAUAAQAAA/8AAAABAAAD/wAAAAAQAAAAAAYABwAADAAcADQARAAABAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAP9AAAABAAAAAAAAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAAAEAAAP7AAUAAQAAA/8AAAAAGAAD/gAJAAgAAAwAHAAsADwATACEAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAA/4AAAABAAAAAAAAAAEAAAAAAAAAAwAAAAEAAAABAAAD/wAAA/8AAAACAAAAAQAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAQAEAAAD/AAEAAEAAAP/AAEAAQAAA/8D9wABAAAABwAAA/sAAAAGAAAAAQAAA/cAAAP/AAAAAAwAA/4ABwAGAAAMABwARAAABAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAUAAAP/AAAD/wAAA/0AAAAGAAAAAAABAAAD/wABAAQAAAP8A/0ABwAAA/wAAAAEAAAAAQAAA/gAAAwAAAAABwAIAAAMABwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAUAAAABAAAD+wAAA/8AAAAFAAAD/QAAAAMAAAP9AAAABQACAAAD/gP/AAMAAAP9A/wABwAAAAEAAAP/AAAD/QAAA/8AAAP9AAAAAAwAA/4ABQAJAAAMADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAABAAAAAwAAA/0AAAADAAAD/QAAAAAAAAACAAAAAQAEAAAD/AP9AAoAAAP+AAAD/wAAA/wAAAP/AAAD/gAKAAEAAAP/AAAAABQAA/8ABwAJAAAMABwALAA8AHQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAYAAAABAAAD/gAAAAEAAAP+AAAAAQAAA/8AAAABAAAD+wAAAAEAAAADAAAD/QAAAAMAAAP/AAAD/gAAA/8AAQAAA/8AAQABAAAD/wABAAEAAAP/AAMAAwAAA/0D/AAJAAAD/wAAA/8AAAP9AAAD/gAAAAEAAAP9AAAUAAAAAAUACAAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAAAAAAAwAAAAAAAAABAAAD+wAAAAQAAAAAAAEAAAP/AAEAAwAAA/0AAwABAAAD/wABAAIAAAP+AAIAAQAAA/8AAAAAFAAAAAAEAAYAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAAAAAAIAAAAAAAAAAQAAA/wAAAADAAAAAAABAAAD/wABAAIAAAP+AAIAAQAAA/8AAQABAAAD/wABAAEAAAP/AAAAABQAAAAABgAIAAAUACQANABEAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAABQAAA/sAAAABAAAAAAAAAAEAAAP+AAAAAQAAA/4AAAAGAAAD+wAAAAAAAgAAA/8AAAP/AAIAAQAAA/8AAQACAAAD/gACAAEAAAP/AAEAAgAAA/8AAAP/AAAAABAAA/4ABgAJAAAMABwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAACAAAD+gAAAAEAAAACAAAD/gAAAAIAAAABAAAD/QAAAAIAAAP+AAEAAAP/AAgAAgAAA/4D+QAGAAAAAQAAAAIAAAP3AAkAAQAAA/8AAAwAA/4AAwAIAAAMACQARAAABAQEBAQEBAQEBAQEBAQEBAQEAAAAAAIAAAAAAAAD/wAAAAIAAAP9AAAAAQAAAAIAAAP+AAAD/gABAAAD/wABAAEAAAABAAAD/gACAAcAAAP+AAAD/wAAA/wAAAv/AAAABQAIAAAMACwAAAQEBAQEBAQEBAQEB/8AAAABAAAAAgAAA/4AAAAFAAAD/gAAAAUAAgAAA/4D+wAHAAAAAQAAA/8AAAP5AAAMAAAAAAMACQAADAAsADwAAAQEBAQEBAQEBAQEBAQEBAQBAAAAAgAAA/0AAAABAAAAAgAAA/4AAAAAAAAAAgAAAAAAAQAAA/8AAQAHAAAD/gAAA/8AAAP8AAcAAQAAA/8AAAAACAAD/gAFAAgAAAwALAAABAQEBAQEBAQEBAQEAwAAAAIAAAP9AAAD/gAAAAUAAAP+AAAD/gABAAAD/wABAAgAAAABAAAD/wAAA/gAABAAAAAACAAJAAAMABwANABEAAAEBAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAIAAAP/AAAAAQAAAAEAAAAAAAEAAAP/AAEABwAAA/kAAAAHAAAD/wAAA/oABwABAAAD/wAAAAAMAAAAAAcABwAADAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAgAAA/8AAAABAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/8AAAP7AAYAAQAAA/8AAAAAJAAAAAAHAAgAAAwAHAAsADwATABcAGwAhACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAD/gAAAAMAAAABAAAAAwAAA/4AAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAMAAAP9AAAAAwAAA/0AAwABAAAD/wAAAAEAAAP/AAEAAQAAAAEAAAP+AAAAAgAAA/8AAAP/AAAAABQAAAAABgAIAAAMABwALAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAAAAAAAAQAAAAAAAAABAAAD+gAAAAEAAAACAAAAAgAAAAAAAQAAA/8AAQABAAAD/wABAAUAAAP7A/8ABwAAA/kABgABAAAD/wAAAAAcAAAAAAgACAAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAUAAAABAAAD/gAAAAEAAAABAAAAAQAAA/kAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAQAAAABAAAAAAAEAAAD/AAEAAEAAAP/AAAAAgAAA/4AAQACAAAD/gAAAAIAAAP+AAIAAQAAA/8D/wACAAAD/gAAAAAcAAP+AAcACAAADAAcACwAPABMAFwAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAAAAAAIAAAP/AAAD/gACAAAD/gACAAIAAAP+AAIAAgAAA/4AAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAgACAAAD/wAAA/8AABAAAAAABgAIAAAUACQATABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAABQAAA/sAAAABAAAAAAAAA/8AAAADAAAAAQAAA/4AAAACAAAD+wAAAAYAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAQAAAAEAAAABAAAD/gAAA/8AAwABAAAAAQAAA/4AAAAACAAAAAAEAAYAABQARAAABAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAA/8AAAADAAAD/QAAAAQAAAP+AAAAAAACAAAD/wAAA/8AAgABAAAAAQAAAAEAAAABAAAD/QAAA/8AAAAAGAAD/gAFAAgAAAwAHAAsAEQAVABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAABAAAD/QAAAAEAAAABAAAD/wAAAAEAAAAAAAAD/AAAAAUAAAP+AAEAAAP/AAEAAQAAA/8AAAAEAAAD/AAEAAIAAAP/AAAD/wACAAEAAAP/AAEAAQAAAAEAAAP+AAAX/wP+AAUACAAADAAcADQARABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAAAAAAAQAAAAEAAAP+AAAAAQAAA/4AAAP/AAAABgAAA/wAAAP+AAEAAAP/AAEAAwAAA/0AAwABAAAAAQAAA/4AAgACAAAD/gACAAEAAAABAAAD/wAAA/8AABgAA/4ABQAIAAAMABwALAA8AFQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAA/4AAAABAAAAAAAAAAEAAAAAAAAAAQAAAAEAAAP9AAAD/wAAAAUAAAP9AAAD/gABAAAD/wABAAEAAAP/AAEAAwAAA/0AAwABAAAD/wABAAIAAAP/AAAD/wACAAEAAAABAAAD/wAAA/8AAAAAEAAD/gAFAAgAAAwAJABEAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAQAAAP7AAAAAwAAA/4AAAACAAAD/wAAAAEAAAABAAAD/wAAA/0AAAAFAAAD/wAAA/4AAQAAA/8AAQADAAAD/wAAA/4AAwACAAAAAgAAA/8AAAP9AAQAAQAAAAEAAAP/AAAD/wAAAAAUAAAAAAUACAAAFABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAQAAAP8AAAD/wAAAAMAAAABAAAAAQAAA/0AAAP+AAAAAQAAAAMAAAABAAAD/AAAAAMAAAAAAAIAAAP/AAAD/wACAAEAAAABAAAAAQAAA/8AAAP/AAAD/wAEAAEAAAP/A/8AAgAAA/4AAgABAAAD/wAAEAAAAAAFAAgAAAwAHAAsAEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+wAAAAUAAAP8AAAAAwAAAAAAAQAAA/8AAQABAAAD/wAAAAMAAAP9AAMABAAAA/8AAAP+AAAD/wAADAAAAAAEAAYAAAwAHAA8AAAEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAAAAAAAAQAAA/wAAAAEAAAD/QAAAAIAAAAAAAEAAAP/AAEAAgAAA/4AAgADAAAD/wAAA/8AAAP/AAAAABAAAAAABQAIAAAMABwALABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAAAAAABAAAD/QAAAAIAAAP9AAAD/wAAAAEAAAABAAAAAgAAA/4AAAAAAAEAAAP/AAEAAgAAA/4AAgABAAAD/wABAAEAAAABAAAAAgAAA/4AAAP/AAAD/wAAEAAD/gAFAAYAAAwAHAAsAFQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAAAAAAAABAAAAAAAAAAEAAAP7AAAABAAAA/0AAAABAAAD/wAAAAAAAQAAA/8AAQABAAAD/wABAAMAAAP9A/wACAAAA/8AAAP7AAAD/wAAA/8AAAAABAAD/gABAAoAAAwAAAQEBAQAAAAAAQAAA/4ADAAAA/QAAAAACAAD/gADAAoAAAwAHAAABAQEBAQEBAQAAAAAAQAAAAEAAAABAAAD/gAMAAAD9AAAAAwAAAP0AAAEAAP+AAcACgAATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQDAAAD/QAAAAMAAAP9AAAAAwAAAAEAAAADAAAD/QAAAAMAAAP9AAAD/gAFAAAAAQAAAAIAAAABAAAAAwAAA/0AAAP/AAAD/gAAA/8AAAP7AAAAAAgAAAAAAQAJAAAMABwAAAQEBAQEBAQEAAAAAAEAAAP/AAAAAQAAAAAAAgAAA/4AAwAGAAAD+gAAMAAAAAAMAAsAAAwAJAA0AEQAVABkAHQAlACsALwAzADcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAABAAAAAgAAAAEAAAAEAAAD/AAAAAEAAAAAAAAAAQAAA/sAAAABAAAABAAAAAEAAAP5AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAAHAAAD/AAAAAUAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAABAAEAAAP/A/8AAgAAA/8AAAP/AAIAAQAAA/8AAQACAAAD/gP/AAQAAAP8AAMAAQAAA/8AAQABAAAD/wP6AAgAAAP/AAAD+gAAA/8ABgABAAAAAQAAA/4AAwABAAAD/wABAAEAAAP/AAAAAQAAA/8AACwAAAAACwAJAAAMACQANABEAFQAbAB8AJwArAC8AMwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAAAIAAAABAAAAAwAAA/0AAAABAAAAAAAAAAEAAAP7AAAAAQAAAAQAAAP9AAAABAAAA/kAAAABAAAD+wAAAAQAAAP9AAAAAwAAAAQAAAACAAAD/QAAAAEAAAACAAAAAQAAAAEAAQAAA/8D/wACAAAD/wAAA/8AAgABAAAD/wABAAEAAAP/A/8ABAAAA/wAAgABAAAAAQAAA/4AAgABAAAD/wP6AAgAAAP/AAAD+gAAA/8ABwABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAJAAAAAAKAAkAABQAJAA0AEQAXABsAJQApAC0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBgAAAAEAAAADAAAD/QAAAAEAAAAAAAAAAQAAA/cAAAABAAAACAAAA/0AAAAEAAAD/QAAAAIAAAP4AAAAAwAAA/0AAAADAAAAAQAAAAEAAAABAAAAAgAAAAEAAAAAAAIAAAP/AAAD/wACAAEAAAP/AAEAAQAAA/8D/gAEAAAD/AADAAEAAAABAAAD/gADAAEAAAP/A/kAAQAAAAQAAAABAAAAAwAAA/cACAABAAAD/wAAAAEAAAP/AAAIAAAAAAkACAAAFAAsAAAEBAQEBAQEBAQEBAQAAAAAAQAAAAcAAAAAAAAD/gAAAAMAAAAAAAgAAAP5AAAD/wABAAYAAAABAAAD+QAAEAAD/gAIAAgAAAwAJAA8AEwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBgAAAAEAAAAAAAAD/wAAAAIAAAP4AAAAAQAAAAQAAAACAAAAAQAAA/4AAQAAA/8AAQAGAAAAAQAAA/kAAQAIAAAD+QAAA/8ABwABAAAD/wAAEAAD/gAEAAkAAAwAJAA0AEQAAAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAAAAA/8AAAACAAAD/wAAAAEAAAP8AAAAAQAAA/4AAQAAA/8AAQAGAAAAAQAAA/kACAABAAAD/wP5AAkAAAP3AAAAABgAAAAACwAIAAAMABwALABEAFwAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBwAAAAMAAAP5AAAAAQAAA/4AAAABAAAD/QAAAAIAAAP/AAAAAwAAAAEAAAABAAAABAAAA/4AAAADAAAAAAABAAAD/wACAAIAAAP+AAIAAgAAA/4D/AAIAAAD/gAAA/oAAAACAAAABgAAA/gAAQAGAAAAAQAAA/kAAAAAHAAD/gAJAAgAAAwAHAAsAEQAXAB0AIQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQHAAAAAQAAA/sAAAABAAAD/gAAAAEAAAAFAAAD/wAAAAIAAAP3AAAAAgAAA/8AAAADAAAAAQAAAAEAAAACAAAAAQAAA/4AAQAAA/8ABAACAAAD/gACAAIAAAP+A/sABgAAAAEAAAP5AAEACAAAA/4AAAP6AAAAAgAAAAYAAAP4AAcAAQAAA/8AABQAA/4ACAAIAAAMABwANABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAYAAAABAAAD/QAAAAEAAAP7AAAABAAAA/0AAAAGAAAD/wAAAAIAAAP/AAAAAQAAA/4AAQAAA/8AAgAFAAAD+wAAAAYAAAP/AAAD+wP/AAYAAAABAAAD+QAIAAEAAAP/AAAAABQAAAAABgALAAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAAAgAAAAEAAAABAAAD/wAAA/wAAAABAAAAAgAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gADAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAYAAAAAAUACQAADAA0AEQAVABkAHQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAP9AAAAAwAAAAEAAAP8AAAAAwAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAEAAgAAA/4D/wABAAAAAgAAAAEAAAABAAAD+wAFAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAAABAAAAAABAALAAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAADAAAD/wAAAAEAAAP+AAAAAgAAA/0AAAABAAAAAgAAAAEAAAAAAAEAAAAGAAAAAQAAA/8AAAP6AAAD/wAJAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAE/8AAAADAAkAAAwAHAAsADwAAAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAA/8AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAABgAAA/oABwABAAAD/wABAAEAAAP/AAAAAQAAA/8AACwAAAAABwALAAAMABwALAA8AEwAXABsAHwAjACcAKwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAcAAAAAAUACQAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAYAAAAAAYACwAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/wAAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAUAAAAAAUACQAADAAkADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAYAAAAAAYACwAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP8AAAABAAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAcAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAUAAAAAAUACgAADAAkADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/QAAAAQAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAcAAAAAAYACwAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAQAAAAAAAAABAAAAAAABAAAD/wABAAcAAAP5AAAABwAAA/kABwABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAUACwAADAAkADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gAAAAEAAAAAAAAAAQAAAAEABQAAA/sD/wABAAAABQAAA/oABwABAAAD/wAAAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAgAAAAAAYACwAADAAcACwAPABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAQAAA/4AAAABAAAAAQAAAAEAAAAAAAEAAAP/AAEABwAAA/kAAAAHAAAD+QAHAAEAAAP/AAAAAQAAA/8AAQABAAAD/wABAAEAAAP/AAAAAQAAA/8AABwAAAAABQALAAAMACQANABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP+AAAAAgAAA/0AAAABAAAAAgAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAHAAAAAAGAAsAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gAAAAEAAAP+AAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAcAAQAAA/8AAAABAAAD/wABAAEAAAP/AAEAAQAAA/8AAAAAGAAAAAAFAAsAAAwAJAA0AEQAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAABAAAD/AAAAAEAAAABAAAAAQAAA/4AAAABAAAD/gAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAAAEAAAAAAFAAYAAAwAHABEAFQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAD/wAAAAQAAAABAAAD/wAAA/0AAAAAAAAAAwAAAAAAAQAAA/8ABAABAAAD/wP9AAIAAAACAAAD/AAAAAEAAAP/AAQAAQAAA/8AAAAAFAAAAAAGAAsAADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAACAAAAAQAAAAEAAAP/AAAD/AAAAAEAAAACAAAD/QAAAAEAAAACAAAAAQAAA/wAAAAEAAAAAAADAAAAAwAAA/0AAAADAAAD/QAAA/0AAAACAAAD/gAGAAIAAAP+AAIAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAAABgAAAAABQAKAAAMADQARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAACAAAAAQAAA/wAAAAEAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAIAAQAAA/8AAAAADAAAAAAGAAsAADwAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAEAAAABAAAD/QAAAAQAAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAAAEAAAP9AAQAAQAAA/8AABQAAAAABQAKAAAMADQARABUAGQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAP+AAAABAAAAAEAAgAAA/4D/wABAAAAAgAAAAEAAAABAAAD+wAFAAEAAAP/AAIAAQAAA/8AAgABAAAD/wAADAAAAAAJAAoAAAwAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAMAAAP9AAAAAQAAAAIAAAP/AAAD/wAAAAcAAAP8AAAAAwAAA/0AAAAEAAAD+wAAAAQAAAAAAAMAAAP9AAAAAwAAAAMAAAP+AAAAAwAAA/8AAAACAAAD/wAAA/4AAAP/AAAD/QAAA/8ACQABAAAD/wAAIAAAAAAJAAgAAAwAHAAsADwAfACMAJwArAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAAAIAAAACAAAAAAAAAAEAAAP3AAAAAQAAAAMAAAP9AAAAAwAAAAEAAAADAAAAAQAAA/wAAAABAAAD+wAAAAMAAAABAAAAAwAAA/sAAAAEAAAAAAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAACAAAD/gAAAAIAAAABAAAAAQAAA/8AAAABAAAD/gAAA/8AAAP/AAQAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAUAAAAAAcACAAADABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAABAAAAAAAAAAMAAAP+AAAAAgAAA/4AAAADAAAAAQAAA/8AAAP6AAAAAQAAAAAAAAABAAAAAAAAAAQAAAABAAEAAAP/A/8AAQAAAAEAAAABAAAAAQAAAAEAAAP+AAAD/wAAA/4AAgAEAAAD/AAEAAEAAAP/AAEAAQAAA/8AAAAADAAD/gAFAAYAAAwAHABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAP8AAAABAAAA/0AAAADAAAD/QAAAAQAAAP+AAEAAAP/AAUAAgAAA/4D/AABAAAAAQAAAAEAAAABAAAAAgAAAAEAAAP5AAAgAAAAAAYACwAADAAsADwATABcAGwAfACMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAADAAAD/gAAAAMAAAP6AAAAAQAAAAAAAAABAAAAAAAAAAQAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAABAAEAAAP/A/8AAQAAAAIAAAABAAAD/AACAAQAAAP8AAQAAQAAA/8AAQABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAGAAD/gAFAAkAAAwAHABEAFQAZAB0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAA/0AAAADAAAD/QAAAAQAAAP9AAAAAgAAA/0AAAABAAAAAgAAAAEAAAP+AAEAAAP/AAMABAAAA/wD/gABAAAAAQAAAAQAAAABAAAD+QAIAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAoAAAAAAUACwAADAAcACwAPABMAGwAfACMAJwArAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/4AAAABAAAD/gAAAAEAAAP/AAAAAQAAAAAAAAABAAAD/AAAAAEAAAABAAAD/wAAAAMAAAABAAAD/AAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAABAAAD/wABAAEAAAP/AAEAAQAAA/8AAwABAAAD/wABAAEAAAP/A/oACAAAA/0AAAP+AAAD/QAHAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAkAAAAAAUACwAADAAcACwAPABMAGwAfACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/4AAAABAAAD/gAAAAEAAAP/AAAAAQAAAAAAAAABAAAD/AAAAAEAAAABAAAD/wAAAAEAAAACAAAD/QAAAAEAAAACAAAAAQAAAAAAAQAAA/8AAQABAAAD/wABAAEAAAP/AAIAAQAAA/8AAQABAAAD/wP7AAkAAAP7AAAD/wAAA/0ACQABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAJAAD/gAHAAgAAAwALAA8AEwAXABsAHwAjACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAIAAAP9AAAD/wAAAAMAAAP/AAAD/QAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP+AAEAAAP/AAEAAQAAAAEAAAP/AAAD/wACAAEAAAP/AAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAABQAA/4ABQAGAAAMACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAMAAAACAAAD/QAAA/8AAAADAAAD/wAAA/0AAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAQAAA/8AAQABAAAAAQAAA/8AAAP/AAIABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAACAAA/4ABwAIAAAkADQARABUAGQAdACEAJQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAA/8AAAADAAAD/wAAAAEAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAgAAAAEAAAP/AAAD/wAAA/8AAwABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAAQAAP+AAUABgAAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAP/AAAAAwAAA/8AAAABAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gACAAAAAQAAA/8AAAP/AAAD/wADAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAAkAAP+AAUACwAADAAcACwARABUAGwAfACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP9AAAAAQAAAAEAAAP/AAAAAQAAAAAAAAP8AAAABQAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAA/4AAQAAA/8AAQABAAAD/wAAAAQAAAP8AAQAAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAAAQAAA/4AAwABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAHAAD/gAEAAkAAAwAHAA0AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAMAAAAAAAAAAQAAA/0AAAABAAAAAQAAAAAAAAP9AAAABAAAA/0AAAACAAAD/QAAAAEAAAACAAAAAQAAA/4AAQAAA/8AAQADAAAD/QADAAEAAAABAAAD/gACAAEAAAABAAAD/gADAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAX/wP+AAMACQAADAAkADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAD/wAAAAIAAAP+AAAAAgAAA/0AAAABAAAAAgAAAAEAAAP+AAEAAAP/AAEABgAAAAEAAAP5AAgAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAkAAAAAAwACAAADAAkADQARABUAGQAdACUAKwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAACAAAAAQAAAAQAAAP8AAAAAQAAAAAAAAABAAAD+wAAAAEAAAAEAAAAAQAAA/kAAAABAAAD+wAAAAQAAAP9AAAAAwAAAAcAAAP8AAAABQAAAAEAAQAAA/8D/wACAAAD/wAAA/8AAgABAAAD/wABAAIAAAP+A/8ABAAAA/wAAwABAAAD/wABAAEAAAP/A/oACAAAA/8AAAP6AAAD/wAGAAEAAAABAAAD/gAAAAAgAAAAAAsACAAADAAkADQARABUAGwAfACcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAACAAAAAQAAAAMAAAP9AAAAAQAAAAAAAAABAAAD+wAAAAEAAAAEAAAD/QAAAAQAAAP5AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAABAAEAAAP/A/8AAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAD/wP/AAQAAAP8AAIAAQAAAAEAAAP+AAIAAQAAA/8D+gAIAAAD/wAAA/oAAAP/AAAYAAAAAAoACQAAFAAkADQARABcAIQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQGAAAAAQAAAAMAAAP9AAAAAQAAAAAAAAABAAAD9wAAAAEAAAAIAAAD/QAAAAQAAAP3AAAAAwAAA/0AAAADAAAAAQAAAAAAAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAD/wP+AAQAAAP8AAMAAQAAAAEAAAP+A/wAAQAAAAQAAAABAAAAAwAAA/cAAAAAHAAAAAAGAAsAAAwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAEAAAAAAAAAAwAAA/4AAAADAAAD+gAAAAEAAAAAAAAAAQAAAAAAAAAEAAAD/QAAAAEAAAAAAAAAAQAAAAEAAQAAA/8D/wABAAAAAgAAAAEAAAP8AAIABAAAA/wABAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAUAAP+AAUACQAADAAcAEQAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAD/QAAAAMAAAP9AAAABAAAA/0AAAABAAAAAAAAAAEAAAP+AAEAAAP/AAMABAAAA/wD/gABAAAAAQAAAAQAAAABAAAD+QAIAAEAAAP/AAEAAQAAA/8AAAwAAAAACgAIAAAMABwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQGAAAAAwAAAAAAAAABAAAD9gAAAAEAAAAEAAAAAQAAA/8AAAP8AAAAAAABAAAD/wABAAUAAAP7A/8ACAAAA/0AAAADAAAD+QAAAAMAAAP8AAAAABQAA/4ABQAIAAAMABwALABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAQAAAAAAAAABAAAAAAAAAAEAAAP7AAAAAQAAAAEAAAP/AAAAAQAAA/8AAAABAAAAAgAAAAEAAQAAA/8AAQABAAAD/wABAAQAAAP8A/sACgAAA/8AAAP/AAAD+wAAA/8AAAP+AAkAAQAAA/8AAAAAGAAAAAAGAAsAAAwAHAA0AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAEAAAP+AAAAAQAAA/0AAAACAAAD/wAAAAMAAAABAAAAAQAAA/0AAAABAAAD/gAAAAEAAAACAAIAAAP+AAIAAgAAA/4D/AAIAAAD/gAAA/oAAAACAAAABgAAA/gACQABAAAD/wABAAEAAAP/AAAQAAAAAAUACQAADAAkADQARAAABAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAP7AAAABAAAA/0AAAABAAAAAQAAA/4AAAABAAAAAAAFAAAD+wAAAAYAAAP/AAAD+wAHAAEAAAP/AAEAAQAAA/8AAAAADAAAAAAGAAsAADwATAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP9AAAAAQAAAAEAAAACAAAD/wAAA/4AAAAAAAMAAAADAAAD/QAAAAMAAAP9AAAD/QAAAAIAAAP+AAYAAgAAA/4AAgACAAAAAQAAA/8AAAP+AAAAAQAAA/8AAAAAGAAAAAAFAAkAAAwANABUAGQAdACEAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAAAAAAAAQAAA/4AAAABAAAD/gAAAAEAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAAAQAAA/8AAAP/AAEAAQAAA/8AAQABAAAD/wABAAEAAAP/AAAAABAAAAAACQALAAAMAGQAdACEAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAADAAAD/QAAAAEAAAACAAAD/wAAA/8AAAAHAAAD/AAAAAMAAAP9AAAABAAAA/wAAAABAAAAAAAAAAEAAAAAAAMAAAP9AAAAAwAAAAMAAAP+AAAAAwAAA/8AAAACAAAD/wAAA/4AAAP/AAAD/QAAA/8ACQABAAAD/wABAAEAAAP/AAAAACQAAAAACQAJAAAMABwALAA8AHwAjACcAKwAvAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAACAAAAAgAAAAAAAAABAAAD9wAAAAEAAAADAAAD/QAAAAMAAAABAAAAAwAAAAEAAAP8AAAAAQAAA/sAAAADAAAAAQAAAAMAAAP8AAAAAQAAAAAAAAABAAAAAAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAACAAAD/gAAAAIAAAABAAAAAQAAA/8AAAABAAAD/gAAA/8AAAP/AAQAAQAAA/8AAAABAAAD/wACAAEAAAP/AAEAAQAAA/8AAAAAPAAAAAAHAAsAAAwAHAAsADwATABcAGwAfACMAJwArAC8AMwA3ADsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAABAAAAAAAAAAEAAAP8AAAAAQAAAAMAAAABAAAAAQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAABAAAAAQAAA/sAAAABAAAAAAAAAAEAAAAAAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAQACAAAD/gP/AAQAAAP8AAMAAQAAA/8D/QAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAIAAQAAA/8AAQABAAAD/wAAAAAcAAP/AAUACQAADAAcAEQAbAB8AIwAnAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAEAAAP+AAAD/wAAAAEAAAABAAAAAgAAAAAAAAP/AAAD/gAAAAMAAAABAAAD/wAAAAEAAAP9AAAAAQAAAAAAAAABAAAD/wABAAAD/wADAAIAAAP+A/4AAQAAAAQAAAP9AAAD/wAAA/8AAQADAAAAAQAAAAEAAAP/AAAD/AAFAAEAAAP/AAEAAQAAA/8AAQABAAAD/wAAAAAYAAAAAAYACwAAPABMAFwAbAB8AIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP+AAAAAQAAAAEAAAABAAAD/AAAAAEAAAABAAAAAQAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gADAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAUACQAADAA0AEQAVABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAP9AAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAFAAAAAAGAAsAADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAEAAAACAAAAAQAAAAEAAAP/AAAD/AAAAAEAAAACAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAADAAAAAwAAA/0AAAADAAAD/QAAA/0AAAACAAAD/gAGAAIAAAP+AAMAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAABgAAAAABQAJAAAMADQARABUAGQAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAQACAAAD/gP/AAEAAAACAAAAAQAAAAEAAAP7AAUAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAFAAAAAAFAAsAACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/0AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAAAIAAAD/wAAA/4AAAP/AAAD/QAAA/8ACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAgAAAAAAUACQAADAAcAEQAVABkAHQAhACUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAAAEAAAD/wAAAAEAAAP+AAAD/gAEAAEAAAP/AAIAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAEAAAAAAFAAsAACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAAFAAAD/AAAAAMAAAP9AAAABAAAA/wAAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAkAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAcAAAAAAUACQAADAAcAEQAVABkAHQAhAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAF/8AAAADAAsAACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAD/wAAAAMAAAP/AAAAAQAAA/0AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAAABAAAABgAAAAEAAAP/AAAD+gAAA/8ACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAAAAX/wAAAAMACQAADAAcACwAPABMAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAD/wAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAAAAAYAAAP6AAcAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAEAAAAAAEAAsAACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAD/wAAAAMAAAP/AAAAAQAAA/0AAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAAAYAAAABAAAD/wAAA/oAAAP/AAkAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAT/wAAAAMACQAADAAcACwAPAAABAQEBAQEBAQEBAQEBAQEBAAAAAABAAAD/gAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAAGAAAD+gAHAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAMAAAAAAHAAsAAAwAHAAsADwATABcAGwAfACMAJwArAC8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAUAAAABAAAD+gAAAAEAAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAIAAAAAAFAAkAAAwAHAAsADwATABcAGwAfAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAsAAAAAAcACwAADAAcACwAPABMAFwAbAB8AIwAnACsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAHAAAAAAFAAkAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAABAAAAAgAAAAEAAAP9AAAAAgAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAIAAAAAAGAAsAAAwAHAAsAFwAbAB8AIwAnAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAUAAAABAAAD/gAAAAEAAAP/AAAAAQAAA/sAAAAEAAAD/QAAAAMAAAP/AAAD/gAAAAEAAAABAAAAAQAAAAEAAAP8AAAAAQAAAAEAAAABAAAAAAABAAAD/wABAAEAAAP/AAMAAwAAA/0D/AAIAAAD/wAAA/0AAAP+AAAAAQAAA/0ACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAGAAAAAAEAAkAABwALAA8AEwAXABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAD/wAAAAEAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAAAAAYAAAP/AAAD/wAAA/wABQABAAAD/wACAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAAcAAAAAAYACwAADAAcACwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAP+AAAAAQAAA/8AAAABAAAD+wAAAAQAAAP9AAAAAwAAA/8AAAP+AAAAAAAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAABAAAD/wABAAEAAAP/AAMAAwAAA/0D/AAIAAAD/wAAA/0AAAP+AAAAAQAAA/0ACQABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAFAAAAAAEAAkAABwALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAABAAAD/wAAAAEAAAABAAAD/QAAAAEAAAACAAAAAQAAA/0AAAACAAAAAAAGAAAD/wAAA/8AAAP8AAUAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAAAHAAAAAAGAAsAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/AAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQAHAAAD+QAAAAcAAAP5AAgAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAGAAAAAAFAAkAAAwAJAA0AEQAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAABAAAD/QAAAAEAAAABAAAAAQAAA/wAAAABAAAAAQAAAAEAAAABAAUAAAP7A/8AAQAAAAUAAAP6AAcAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAAGAAAAAAGAAsAAAwAHAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAABAAAA/sAAAABAAAABAAAAAEAAAP7AAAAAQAAAAIAAAABAAAD/QAAAAIAAAAAAAEAAAP/AAEABwAAA/kAAAAHAAAD+QAIAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAFAAAAAAFAAkAAAwAJAA0AEQAVAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAAAAAAMAAAABAAAD/AAAAAEAAAACAAAAAQAAA/0AAAACAAAAAQAFAAAD+wP/AAEAAAAFAAAD+gAHAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAGAAD/gAFAAgAAAwAJAA0AEQAVABkAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAAAAAAA/0AAAAEAAAAAAAAAAEAAAP8AAAAAwAAA/wAAAABAAAAAAAAAAQAAAP+AAEAAAP/AAEAAQAAAAEAAAP+AAIAAwAAA/0AAwABAAAD/wABAAIAAAP+AAIAAQAAA/8AAAAAFAAD/gAEAAYAAAwAJAA8AFQAZAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAP+AAAAAwAAAAAAAAP/AAAAAgAAA/wAAAABAAAAAQAAA/8AAAADAAAD/gABAAAD/wABAAEAAAABAAAD/gACAAEAAAABAAAD/gACAAIAAAP/AAAD/wACAAEAAAP/AAAIAAP+AAUACAAADAAsAAAEBAQEBAQEBAQEBAQBAAAAAQAAAAAAAAP+AAAABQAAA/4AAAP+AAEAAAP/AAEACAAAAAEAAAP/AAAD+AAADAAD/gADAAgAAAwAJABEAAAEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAAAAAACAAAD/wAAA/4AAAABAAAAAgAAA/4AAAP+AAEAAAP/AAEAAgAAA/8AAAP/AAIABwAAA/4AAAP/AAAD/AAAHAAD/gAFAAgAAAwAHAAsAFQAZAB0AIQAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAwAAAAAAAAABAAAD/AAAAAIAAAACAAAD/gAAAAEAAAABAAAAAQAAA/sAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAQAAA/8AAQABAAAD/wADAAEAAAP/A/4AAwAAAAEAAAABAAAD/wAAA/wABgABAAAD/wP/AAIAAAP+AAIAAQAAA/8AABQAA/4ABQAGAAAMABwALABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/QAAAAEAAAP+AAAAAQAAAAMAAAP+AAAAAgAAAAEAAAP8AAAAAwAAA/4AAQAAA/8AAwABAAAD/wADAAEAAAP/A/sAAwAAAAEAAAACAAAD+gAGAAEAAAP/AAAAABAAAAAABgALAAAsADwATABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQAAAAAAQAAAAQAAAABAAAD/wAAA/wAAAACAAAAAQAAA/4AAAABAAAAAQAAAAEAAAAAAAgAAAP9AAAAAwAAA/gAAAAEAAAD/AAJAAEAAAP/AAEAAQAAA/8AAAABAAAD/wAAFAAAAAAFAAsAAAwALAA8AEwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAEAAAP7AAAAAQAAAAMAAAP9AAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAAAAAFAAAD+wAAAAkAAAP9AAAD/wAAA/sACQABAAAD/wABAAEAAAP/AAAAAQAAA/8AAAAADAAD/gAGAAgAAAwALAA8AAAEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAP6AAAAAQAAAAEAAAP/AAAAAQAAAAMAAAP+AAkAAAP3AAIACAAAA/8AAAP/AAAD+gAHAAEAAAP/AAAAABQAA/4ACAAJAAAMABwALAA8AHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAEAAAABAAAAAgAAAAAAAAABAAAD+AAAAAEAAAADAAAD/QAAAAMAAAP9AAAAAwAAAAEAAAACAAAD/gAAA/4AAQAAA/8AAAABAAAD/wABAAEAAAP/AAIABAAAA/wD/gABAAAAAQAAAAQAAAABAAAAAwAAA/gAAAP/AAAD/wAAAAAgAAAAAAYACAAADAAcACwAPABMAFwAbAB8AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAAEAAAD+wAAAAEAAAAEAAAAAQAAA/sAAAAEAAAD+wAAAAEAAAAAAAAAAQAAAAMAAAABAAAD/QAAAAIAAAAAAAEAAAP/AAEAAwAAA/0AAAADAAAD/QADAAEAAAP/AAEAAQAAA/8AAQABAAAD/wP/AAIAAAP+AAIAAQAAA/8AACAAAAAABQAIAAAMABwALAA8AEwAXABsAHwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAQAAAAMAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAMAAAP8AAAAAQAAAAMAAAABAAAD/AAAAAEAAAABAAAAAQAAAAAAAQAAA/8AAQADAAAD/QAAAAMAAAP9AAMAAQAAA/8AAQACAAAD/gAAAAIAAAP+AAIAAQAAA/8AAAABAAAD/wAAGAAD/gAGAAgAAAwAJAA0AEQAVABsAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBQAAAAEAAAP6AAAAAQAAAAQAAAP8AAAAAQAAAAAAAAABAAAAAAAAAAEAAAAAAAAD/AAAAAUAAAP+AAIAAAP+AAIAAgAAA/8AAAP/AAIAAQAAA/8AAQACAAAD/gACAAEAAAP/AAEAAQAAAAEAAAP+AAAUAAP+AAUABgAADAAkADQARABcAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAQAAA/sAAAABAAAAAwAAA/0AAAABAAAAAAAAAAEAAAAAAAAD/QAAAAQAAAP+AAIAAAP+AAIAAgAAA/8AAAP/AAIAAQAAA/8AAQABAAAD/wABAAEAAAABAAAD/gAAAAAMAAAAAAYACgAAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAABAAAAAQAAA/8AAAP8AAAAAQAAAAIAAAP/AAAAAQAAAAAAAwAAAAMAAAP9AAAAAwAAA/0AAAP9AAAAAgAAA/4ABgACAAAD/gADAAEAAAP/AAAAABAAAAAABQAIAAAMADQARABUAAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAAAAAAAwAAA/0AAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAABAAIAAAP+A/8AAQAAAAIAAAABAAAAAQAAA/sABQABAAAD/wACAAEAAAP/AAAAAAQAA/4ABQAIAABEAAAEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAQAAA/4AAAAFAAAD/AAAAAMAAAP9AAAABAAAA/4AAAP+AAEAAAABAAAACAAAA/8AAAP+AAAD/wAAA/0AAAP/AAAD/gAAFAAD/gAFAAYAAAwAJAA0AFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAACAAAAAAAAA/4AAAADAAAAAAAAAAEAAAP7AAAAAQAAAAMAAAABAAAD/AAAAAAAAAADAAAD/gABAAAD/wABAAEAAAABAAAD/gACAAEAAAP/AAAABAAAA/8AAAABAAAD/gAAA/4ABAABAAAD/wAAAAAkAAAAAAcACwAADAAcACwAPABMAFwAbACMAJwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQCAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP6AAAAAQAAAAUAAAABAAAD+gAAAAEAAAADAAAAAQAAA/wAAAABAAAAAQAAAAEAAAP9AAAABAAAAAAAAQAAA/8AAQABAAAD/wAAAAEAAAP/AAEABAAAA/wAAAAEAAAD/AAEAAEAAAP/AAAAAQAAA/8AAQACAAAD/wAAAAEAAAP+AAMAAQAAA/8AAAAAHAAAAAAFAAoAAAwAHAAsADwATABcAGwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/0AAAABAAAAAQAAAAEAAAP9AAAAAwAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAIAAQAAA/8AAAAAJAAAAAAHAAsAAAwAHAAsADwATABcAGwAjAC0AAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAQAAAAEAAAABAAAD/gAAA/8AAAAEAAAD/wAAA/8AAAAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wAAAAEAAAP/AAEAAgAAA/8AAAABAAAD/gACAAEAAAABAAAD/gAAAAEAAAP/AAAkAAAAAAUACwAADAAcACwAPABMAFwAbAB8AIwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/QAAAAEAAAABAAAAAQAAA/4AAAABAAAAAQAAAAEAAAP8AAAABAAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wACAAEAAAP/AAAAACQAAAAABwAKAAAMABwALAA8AEwAXABsAHwAjAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAgAAAAMAAAP8AAAAAQAAAAMAAAABAAAD+gAAAAEAAAAFAAAAAQAAA/oAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAAABAAAD/wABAAEAAAP/AAIAAQAAA/8AAAAAFAAAAAAFAAgAAAwAHAAsADwATAAABAQEBAQEBAQEBAQEBAQEBAQEBAQBAAAAAwAAA/wAAAABAAAAAwAAAAEAAAP8AAAAAwAAA/4AAAABAAAAAAABAAAD/wABAAQAAAP8AAAABAAAA/wABAABAAAD/wACAAEAAAP/AAAAACQAAAAABwALAAAMABwALAA8AEwAXABsAIwAnAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAADAAAD/AAAAAEAAAADAAAAAQAAA/oAAAABAAAABQAAAAEAAAP6AAAAAQAAAAMAAAABAAAD/AAAAAEAAAABAAAAAQAAA/0AAAAEAAAAAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAAABAAAD/wABAAEAAAABAAAD/wAAA/8AAwABAAAD/wAAAAAYAAAAAAUACgAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAADAAAD/AAAAAEAAAADAAAAAQAAA/wAAAADAAAD/gAAAAEAAAP+AAAABAAAAAAAAQAAA/8AAQAEAAAD/AAAAAQAAAP8AAQAAQAAA/8AAgABAAAD/wACAAEAAAP/AAAYAAAAAAUACgAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAIAAAABAAAD/gAAAAEAAAABAAAAAQAAA/wAAAABAAAAAwAAAAEAAAP8AAAABAAAAAAABAAAA/wABAACAAAD/gAAAAIAAAP+AAIAAgAAA/4AAAACAAAD/gADAAEAAAP/AAAcAAP+AAUACAAADAAcACwAPABMAFwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAEAAAABAAAAAAAAAAEAAAP+AAAAAQAAAAEAAAABAAAD/AAAAAEAAAADAAAAAQAAA/wAAAAEAAAD/gACAAAD/gACAAIAAAP+AAIAAgAAA/4AAAACAAAD/gACAAIAAAP+AAAAAgAAA/4AAwABAAAD/wAAAAAYAAP/AAUACQAADAAcACwAPABMAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAP8AAAAAQAAA/8AAQAAA/8AAAABAAAD/wABAAEAAAP/AAAAAQAAA/8AAQABAAAD/wAAAAgAAAP4AAAcAAP+AAgABgAADAAcACwAPABMAFwAdAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAwAAAAEAAAABAAAAAgAAA/0AAAABAAAAAgAAAAEAAAP9AAAAAgAAA/0AAAABAAAD+wAAAAQAAAP9AAAD/gABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAEABAAAA/wD/wAGAAAD/wAAA/sAABgAA/8ABQAIAAAMABwALAA8AEwAbAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAAAQAAAAIAAAP9AAAAAQAAAAIAAAABAAAD/QAAAAIAAAP8AAAAAQAAAAIAAAP+AAAD/wABAAAD/wAAAAEAAAP/AAEAAQAAA/8AAAABAAAD/wABAAEAAAP/AAAABwAAA/4AAAP/AAAD/AAACAAD/gACAAYAAAwAJAAABAQEBAQEBAQEBAAAAAABAAAAAAAAA/8AAAACAAAD/gABAAAD/wABAAYAAAABAAAD+QAAAAAMAAAAAAkACQAADAAcAFwAAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAABAAAABwAAAAEAAAP4AAAAAwAAA/0AAAADAAAAAQAAAAMAAAP9AAAAAwAAAAEABAAAA/wAAAAEAAAD/AP/AAEAAAAEAAAAAQAAAAMAAAP9AAAD/wAAA/wAAAP/AAAAAAwAA/4ACQAGAAAMABwAXAAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEAAAAAAEAAAAHAAAAAQAAA/sAAAP9AAAAAwAAA/0AAAAHAAAD/QAAAAMAAAP9AAAAAQAEAAAD/AAAAAQAA")


--// CUSTOM DRAWING
local drawing = {} do
    local services = setmetatable({}, {
        __index = function(self, key)
            if key == "InputService" then
                key = "UserInputService"
            end

            if not rawget(self, key) then
                local service = game:GetService(key)
                rawset(self, service, service)

                return service
            end

            return rawget(self, key)
        end
    })

    -- taken from Nevermore Engine https://github.com/Quenty/NevermoreEngine/tree/main/src

    local HttpService = game:GetService("HttpService")

    local ENABLE_TRACEBACK = false

    local Signal = {}
    Signal.__index = Signal
    Signal.ClassName = "Signal"

    --[=[
        Returns whether a class is a signal
        @param value any
        @return boolean
    ]=]
    function Signal.isSignal(value)
        return type(value) == "table"
            and getmetatable(value) == Signal
    end

    --[=[
        Constructs a new signal.
        @return Signal<T>
    ]=]
    function Signal.new()
        local self = setmetatable({}, Signal)

        self._bindableEvent = Instance.new("BindableEvent")
        self._argMap = {}
        self._source = ENABLE_TRACEBACK and debug.traceback() or ""

        -- Events in Roblox execute in reverse order as they are stored in a linked list and
        -- new connections are added at the head. This event will be at the tail of the list to
        -- clean up memory.
        self._bindableEvent.Event:Connect(function(key)
            self._argMap[key] = nil

            -- We've been destroyed here and there's nothing left in flight.
            -- Let's remove the argmap too.
            -- This code may be slower than leaving this table allocated.
            if (not self._bindableEvent) and (not next(self._argMap)) then
                self._argMap = nil
            end
        end)

        return self
    end

    --[=[
        Fire the event with the given arguments. All handlers will be invoked. Handlers follow
        @param ... T -- Variable arguments to pass to handler
    ]=]
    function Signal:Fire(...)
        if not self._bindableEvent then
            warn(("Signal is already destroyed. %s"):format(self._source))
            return
        end

        local args = table.pack(...)

        -- TODO: Replace with a less memory/computationally expensive key generation scheme
        local key = HttpService:GenerateGUID(false)
        self._argMap[key] = args

        -- Queues each handler onto the queue.
        self._bindableEvent:Fire(key)
    end

    --[=[
        Connect a new handler to the event. Returns a connection object that can be disconnected.
        @param handler (... T) -> () -- Function handler called when `:Fire(...)` is called
        @return RBXScriptConnection
    ]=]
    function Signal:Connect(handler)
        if not (type(handler) == "function") then
            error(("connect(%s)"):format(typeof(handler)), 2)
        end

        return self._bindableEvent.Event:Connect(function(key)
            -- note we could queue multiple events here, but we'll do this just as Roblox events expect
            -- to behave.

            local args = self._argMap[key]
            if args then
                handler(table.unpack(args, 1, args.n))
            else
                error("Missing arg data, probably due to reentrance.")
            end
        end)
    end

    --[=[
        Wait for fire to be called, and return the arguments it was given.
        @yields
        @return T
    ]=]
    function Signal:Wait()
        local key = self._bindableEvent.Event:Wait()
        local args = self._argMap[key]
        if args then
            return table.unpack(args, 1, args.n)
        else
            error("Missing arg data, probably due to reentrance.")
            return nil
        end
    end

    --[=[
        Disconnects all connected events to the signal. Voids the signal as unusable.
        Sets the metatable to nil.
    ]=]
    function Signal:Destroy()
        if self._bindableEvent then
            -- This should disconnect all events, but in-flight events should still be
            -- executed.

            self._bindableEvent:Destroy()
            self._bindableEvent = nil
        end

        -- Do not remove the argmap. It will be cleaned up by the cleanup connection.

        setmetatable(self, nil)
    end

    local signal = Signal

    local function ismouseover(obj)
        local posX, posY = obj.Position.X, obj.Position.Y
        local sizeX, sizeY = posX + obj.Size.X, posY + obj.Size.Y
        local mousepos = services.InputService:GetMouseLocation()

        if mousepos.X >= posX and mousepos.Y >= posY and mousepos.X <= sizeX and mousepos.Y <= sizeY then
            return true
        end

        return false
    end

    local function udim2tovector2(udim2, vec2)
        local xscalevector2 = vec2.X * udim2.X.Scale
        local yscalevector2 = vec2.Y * udim2.Y.Scale

        local newvec2 = Vector2.new(xscalevector2 + udim2.X.Offset, yscalevector2 + udim2.Y.Offset)

        return newvec2
    end

    -- totally not skidded from devforum (trust)
    local function istouching(pos1, size1, pos2, size2)
        local top = pos2.Y - pos1.Y
        local bottom = pos2.Y + size2.Y - (pos1.Y + size1.Y)
        local left = pos2.X - pos1.X
        local right = pos2.X + size2.X - (pos1.X + size1.X)

        local touching = true

        if top > 0 then
            touching = false
        elseif bottom < 0 then
            touching = false
        elseif left > 0 then
            touching = false
        elseif right < 0 then
            touching = false
        end

        return touching
    end

    local objchildren = {}
    local objmts = {}
    local objvisibles = {}
    local mtobjs = {}
    local udim2posobjs = {}
    local udim2sizeobjs = {}
    local objpositions = {}
    local listobjs = {}
    local listcontents = {}
    local listchildren = {}
    local listadds = {}
    local objpaddings = {}
    local scrollobjs = {}
    local listindexes = {}
    local custompropertysets = {}
    local custompropertygets = {}
    local objconnections = {}
    local objmtchildren = {}
    local scrollpositions = {}
    local currentcanvasposobjs = {}
    local childrenposupdates = {}
    local childrenvisupdates = {}
    local squares = {}
    local objsignals = {}
    local objexists = {}

    local function mouseoverhighersquare(obj)
        for _, square in next, squares do
            if square.Visible == true and square.ZIndex > obj.ZIndex then
                if ismouseover(square) then
                    return true
                end
            end
        end
    end

    services.InputService.InputEnded:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] then
                if signals.inputbegan[input] then
                    signals.inputbegan[input] = false

                    if signals.InputEnded then
                        signals.InputEnded:Fire(input, gpe)
                    end
                end

                if obj.Visible then
                    if ismouseover(obj) then
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and not mouseoverhighersquare(obj) then
                            if signals.MouseButton1Up then
                                signals.MouseButton1Up:Fire()
                            end

                            if signals.mouse1down and signals.MouseButton1Click then
                                signals.mouse1down = false
                                signals.MouseButton1Click:Fire()
                            end
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton2 and not mouseoverhighersquare(obj) then
                            if signals.MouseButton2Clicked then
                                signals.MouseButton2Clicked:Fire()
                            end

                            if signals.MouseButton2Up then
                                signals.MouseButton2Up:Fire()
                            end
                        end
                    end
                end
            end
        end
    end)

    services.InputService.InputChanged:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] and obj.Visible and (signals.MouseEnter or signals.MouseMove or signals.InputChanged or signals.MouseLeave) then
                if ismouseover(obj) then
                    if not signals.mouseentered then
                        signals.mouseentered = true

                        if signals.MouseEnter then
                            signals.MouseEnter:Fire(input.Position)
                        end

                        if signals.MouseMoved then
                            signals.MouseMoved:Fire(input.Position)
                        end
                    end

                    if signals.InputChanged then
                        signals.InputChanged:Fire(input, gpe)
                    end
                elseif signals.mouseentered then
                    signals.mouseentered = false

                    if signals.MouseLeave then
                        signals.MouseLeave:Fire(input.Position)
                    end
                end
            end
        end
    end)

    services.InputService.InputBegan:Connect(function(input, gpe)
        for obj, signals in next, objsignals do
            if objexists[obj] then
                if obj.Visible then
                    if ismouseover(obj) and not mouseoverhighersquare(obj) then
                        signals.inputbegan[input] = true

                        if signals.InputBegan then
                            signals.InputBegan:Fire(input, gpe)
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton1 and (not mouseoverhighersquare(obj) or obj.Transparency == 0) then
                            signals.mouse1down = true

                            if signals.MouseButton1Down then
                                signals.MouseButton1Down:Fire()
                            end
                        end

                        if input.UserInputType == Enum.UserInputType.MouseButton2 and (not mouseoverhighersquare(obj) or obj.Transparency == 0) then
                            if signals.MouseButton2Down then
                                signals.MouseButton2Down:Fire()
                            end
                        end
                    end
                end
            end
        end
    end)

    function drawing:new(shape)
        local obj = Drawing.new(shape)
        objexists[obj] = true
        local signalnames = {}

        local listfunc
        local scrollfunc
        local refreshscrolling

        objconnections[obj] = {}

        if shape == "Square" then
            table.insert(squares, obj)

            signalnames = {
                MouseButton1Click = signal.new(),
                MouseButton1Up = signal.new(),
                MouseButton1Down = signal.new(),
                MouseButton2Click = signal.new(),
                MouseButton2Up = signal.new(),
                MouseButton2Down = signal.new(),
                InputBegan = signal.new(),
                InputEnded = signal.new(),
                InputChanged = signal.new(),
                MouseEnter = signal.new(),
                MouseLeave = signal.new(),
                MouseMoved = signal.new()
            }

            local attemptedscrollable = false

            scrollfunc = function(self)
                if listobjs[self] then
                    scrollpositions[self] = 0
                    scrollobjs[self] = true

                    self.ClipsDescendants = true

                    local function scroll(amount)
                        local totalclippedobjs, currentclippedobj, docontinue = 0, nil, false

                        for i, object in next, listchildren[self] do
                            if amount == 1 then
                                if object.Position.Y > mtobjs[self].Position.Y then
                                    if not istouching(object.Position, object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        if not currentclippedobj then
                                            currentclippedobj = object
                                        end

                                        totalclippedobjs = totalclippedobjs + 1
                                        docontinue = true
                                    end
                                end
                            end

                            if amount == -1 then
                                if object.Position.Y <= mtobjs[self].Position.Y then
                                    if not istouching(object.Position, object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        currentclippedobj = object
                                        totalclippedobjs = totalclippedobjs + 1
                                        docontinue = true
                                    end
                                end
                            end
                        end

                        if docontinue then
                            if amount > 0 then
                                local poschange = -(currentclippedobj.Size.Y + objpaddings[self])
                                local closestobj

                                for i, object in next, objchildren[self] do
                                    if istouching(object.Position + Vector2.new(0, poschange), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                        closestobj = object
                                        break
                                    end
                                end

                                local diff = (Vector2.new(0, mtobjs[self].Position.Y) - Vector2.new(0, (closestobj.Position.Y + poschange + objpaddings[self]))).magnitude

                                if custompropertygets[mtobjs[self]]("ClipsDescendants") then
                                    for i, object in next, objchildren[self] do
                                        if not istouching(object.Position + Vector2.new(0, poschange - diff + objpaddings[self]), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                            object.Visible = false
                                            childrenvisupdates[objmts[object]](objmts[object], false)
                                        else
                                            object.Visible = true
                                            childrenvisupdates[objmts[object]](objmts[object], true)
                                        end
                                    end
                                end

                                scrollpositions[self] = scrollpositions[self] + (poschange - diff + objpaddings[self])

                                for i, object in next, objchildren[self] do
                                    childrenposupdates[objmts[object]](objmts[object], object.Position + Vector2.new(0, poschange - diff + objpaddings[self]))
                                    object.Position = object.Position + Vector2.new(0, poschange - diff + objpaddings[self])
                                end
                            else
                                local poschange = currentclippedobj.Size.Y + objpaddings[self]

                                if custompropertygets[mtobjs[self]]("ClipsDescendants") then
                                    for i, object in next, objchildren[self] do
                                        if not istouching(object.Position + Vector2.new(0, poschange), object.Size, mtobjs[self].Position, mtobjs[self].Size) then
                                            object.Visible = false
                                            childrenvisupdates[objmts[object]](objmts[object], false)
                                        else
                                            object.Visible = true
                                            childrenvisupdates[objmts[object]](objmts[object], true)
                                        end
                                    end
                                end

                                scrollpositions[self] = scrollpositions[self] + poschange

                                for i, object in next, objchildren[self] do
                                    childrenposupdates[objmts[object]](objmts[object], object.Position + Vector2.new(0, poschange))
                                    object.Position = object.Position + Vector2.new(0, poschange)
                                end
                            end
                        end

                        return docontinue
                    end

                    refreshscrolling = function()
                        repeat
                        until
                            not scroll(-1)
                    end

                    self.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseWheel then
                            if input.Position.Z > 0 then
                                scroll(-1)
                            else
                                scroll(1)
                            end
                        end
                    end)
                else
                    attemptedscrollable = true
                end
            end

            listfunc = function(self, padding)
                objpaddings[self] = padding
                listcontents[self] = 0
                listchildren[self] = {}
                listindexes[self] = {}
                listadds[self] = {}

                listobjs[self] = true

                for i, object in next, objchildren[self] do
                    table.insert(listchildren[self], object)
                    table.insert(listindexes[self], listcontents[self] + (#listchildren[self] == 1 and 0 or padding))

                    local newpos = mtobjs[self].Position + Vector2.new(0, listcontents[self] + (#listchildren[self] == 1 and 0 or padding))
                    object.Position = newpos

                    childrenposupdates[object](objmts[object], newpos)

                    custompropertysets[object]("AbsolutePosition", newpos)

                    listadds[self][object] = object.Size.Y + (#listchildren[self] == 1 and 0 or padding)
                    listcontents[self] = listcontents[self] + object.Size.Y + (#listchildren[self] == 1 and 0 or padding)
                end

                if attemptedscrollable then
                    scrollfunc(self)
                end
            end
        end

        local customproperties = {
            Parent = nil,
            AbsolutePosition = nil,
            AbsoluteSize = nil,
            ClipsDescendants = false
        }

        custompropertysets[obj] = function(k, v)
            customproperties[k] = v
        end

        custompropertygets[obj] = function(k)
            return customproperties[k]
        end

        local mt = setmetatable({exists = true}, {
            __index = function(self, k)
                if k == "Parent" then
                    return customproperties.Parent
                end

                if k == "Visible" then
                    return objvisibles[obj]
                end

                if k == "Position" then
                    return udim2posobjs[obj] or objpositions[obj] or obj[k]
                end

                if k == "Size" then
                    return udim2sizeobjs[obj] or obj[k]
                end

                if k == "AddListLayout" and listfunc then
                    return listfunc
                end

                if k == "MakeScrollable" and scrollfunc then
                    return scrollfunc
                end

                if k == "RefreshScrolling" and refreshscrolling then
                    return refreshscrolling
                end

                if k == "AbsoluteContentSize" then
                    return listcontents[self]
                end

                if k == "GetChildren" then
                    return function(self)
                        return objmtchildren[self]
                    end
                end

                if k == "Remove" then
                    return function(self)
                        rawset(self, "exists", false)
                        objexists[obj] = false

                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] - listadds[customproperties.Parent][obj]

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position - Vector2.new(0, listadds[customproperties.Parent][obj])
                                end
                            end

                            if table.find(listchildren[customproperties.Parent], obj) then
                                table.remove(listchildren[customproperties.Parent], table.find(listchildren[customproperties.Parent], obj))
                            end

                            if table.find(objchildren[customproperties.Parent], obj) then
                                table.remove(objchildren[customproperties.Parent], table.find(objchildren[customproperties.Parent], obj))
                                table.remove(listindexes[customproperties.Parent], table.find(objchildren[customproperties.Parent], obj))
                            end
                        end

                        if table.find(squares, mtobjs[self]) then
                            table.remove(squares, table.find(squares, mtobjs[self]))
                        end

                        for _, object in next, objchildren[self] do
                            if objexists[object] then
                                table.remove(objsignals, table.find(objsignals, object))
                                objmts[object]:Remove()
                            end
                        end

                        table.remove(objsignals, table.find(objsignals, obj))
                        obj:Remove()
                    end
                end

                if signalnames and signalnames[k] then
                    objsignals[obj] = objsignals[obj] or {}

                    if not objsignals[obj][k] then
                        objsignals[obj][k] = signalnames[k]
                    end

                    objsignals[obj].inputbegan = objsignals[obj].inputbegan or {}
                    objsignals[obj].mouseentered = objsignals[obj].mouseentered or {}
                    objsignals[obj].mouse1down = objsignals[obj].mouse1down or {}

                    return signalnames[k]
                end

                return customproperties[k] or obj[k]
            end,

            __newindex = function(self, k, v)
                local changechildrenvis
                changechildrenvis = function(parent, vis)
                    if objchildren[parent] then
                        for _, object in next, objchildren[parent] do
                            if (custompropertygets[mtobjs[parent]]("ClipsDescendants") and not istouching(object.Position, object.Size, mtobjs[parent].Position, mtobjs[parent].Size)) then
                                object.Visible = false
                                changechildrenvis(objmts[object], false)
                            else
                                object.Visible = vis and objvisibles[object] or false
                                changechildrenvis(objmts[object], vis and objvisibles[object] or false)
                            end
                        end
                    end
                end

                childrenvisupdates[self] = changechildrenvis

                if k == "Visible" then
                    objvisibles[obj] = v

                    if customproperties.Parent and (not mtobjs[customproperties.Parent].Visible or (custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") and not istouching(obj.Position, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size))) then
                        v = false
                        changechildrenvis(self, v)
                    else
                        changechildrenvis(self, v)
                    end
                end

                if k == "ClipsDescendants" then
                    customproperties.ClipsDescendants = v

                    for _, object in next, objchildren[self] do
                        object.Visible = v and (istouching(object.Position, object.Size, obj.Position, obj.Size) and objvisibles[object] or false) or objvisibles[object]
                    end

                    return
                end

                local changechildrenpos
                changechildrenpos = function(parent, val)
                    if objchildren[parent] then
                        if listobjs[parent] then
                            for i, object in next, objchildren[parent] do
                                local newpos = val + Vector2.new(0, listindexes[parent][i])

                                if scrollobjs[parent] then
                                    newpos = val + Vector2.new(0, listindexes[parent][i] + scrollpositions[parent])
                                end

                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                object.Position = newpos
                                custompropertysets[object]("AbsolutePosition", newpos)

                                changechildrenpos(objmts[object], newpos)
                            end
                        else
                            for _, object in next, objchildren[parent] do
                                local newpos = val + objpositions[object]
                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                object.Position = newpos

                                custompropertysets[object]("AbsolutePosition", newpos)

                                changechildrenpos(objmts[object], newpos)
                            end
                        end
                    end
                end

                childrenposupdates[self] = changechildrenpos

                if k == "Position" then
                    if typeof(v) == "UDim2" then
                        udim2posobjs[obj] = v

                        if customproperties.Parent then
                            objpositions[obj] = udim2tovector2(v, mtobjs[customproperties.Parent].Size)

                            if listobjs[customproperties.Parent] then
                                return
                            else
                                v = mtobjs[customproperties.Parent].Position + udim2tovector2(v, mtobjs[customproperties.Parent].Size)
                            end
                        else
                            local newpos = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                            objpositions[obj] = newpos
                            v = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                        end

                        customproperties.AbsolutePosition = v

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end

                        changechildrenpos(self, v)
                    else
                        objpositions[obj] = v

                        if customproperties.Parent then
                            if listobjs[customproperties.Parent] then
                                return
                            else
                                v = mtobjs[customproperties.Parent].Position + v
                            end
                        end

                        customproperties.AbsolutePosition = v

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(v, obj.Size, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end

                        changechildrenpos(self, v)
                    end

                    v = v
                end

                local changechildrenudim2pos
                changechildrenudim2pos = function(parent, val)
                    if objchildren[parent] and not listobjs[parent] then
                        for _, object in next, objchildren[parent] do
                            if udim2posobjs[object] then
                                local newpos = mtobjs[parent].Position + udim2tovector2(udim2posobjs[object], val)
                                newpos = Vector2.new(math.floor(newpos.X), math.floor(newpos.Y))

                                if not listobjs[parent] then
                                    object.Position = newpos
                                end

                                custompropertysets[object]("AbsolutePosition", newpos)
                                objpositions[object] = udim2tovector2(udim2posobjs[object], val)
                                changechildrenpos(objmts[object], newpos)
                            end
                        end
                    end
                end

                local changechildrenudim2size
                changechildrenudim2size = function(parent, val)
                    if objchildren[parent] then
                        for _, object in next, objchildren[parent] do
                            if udim2sizeobjs[object] then
                                local newsize = udim2tovector2(udim2sizeobjs[object], val)
                                object.Size = newsize

                                if custompropertygets[mtobjs[parent]]("ClipsDescendants") then
                                    object.Visible = istouching(object.Position, object.Size, mtobjs[parent].Position, mtobjs[parent].Size) and objvisibles[object] or false
                                end

                                custompropertysets[object]("AbsoluteSize", newsize)

                                changechildrenudim2size(objmts[object], newsize)
                                changechildrenudim2pos(objmts[object], newsize)
                            end
                        end
                    end
                end

                if k == "Size" then
                    if typeof(v) == "UDim2" then
                        udim2sizeobjs[obj] = v

                        if customproperties.Parent then
                            v = udim2tovector2(v, mtobjs[customproperties.Parent].Size)
                        else
                            v = udim2tovector2(v, workspace.CurrentCamera.ViewportSize)
                        end

                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local oldsize = obj.Size.Y
                            local sizediff = v.Y - oldsize

                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                            listadds[customproperties.Parent][obj] = listadds[customproperties.Parent][obj] + sizediff

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position + Vector2.new(0, sizediff)
                                    listindexes[customproperties.Parent][i] = listindexes[customproperties.Parent][i] + sizediff
                                end
                            end
                        end

                        customproperties.AbsoluteSize = v

                        changechildrenudim2size(self, v)
                        changechildrenudim2pos(self, v)

                        if customproperties.ClipsDescendants then
                            for _, object in next, objchildren[self] do
                                object.Visible = istouching(object.Position, object.Size, obj.Position, v) and objvisibles[object] or false
                            end
                        end

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end
                    else
                        if customproperties.Parent and listobjs[customproperties.Parent] then
                            local oldsize = obj.Size.Y
                            local sizediff = v.Y - oldsize

                            local objindex = table.find(objchildren[customproperties.Parent], obj)

                            listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                            listadds[customproperties.Parent][obj] = listadds[customproperties.Parent][obj] + sizediff

                            for i, object in next, objchildren[customproperties.Parent] do
                                if i > objindex then
                                    object.Position = object.Position + Vector2.new(0, sizediff)
                                    listcontents[customproperties.Parent] = listcontents[customproperties.Parent] + sizediff
                                    listindexes[customproperties.Parent][i] = listindexes[customproperties.Parent][i] + sizediff
                                end
                            end
                        end

                        customproperties.AbsoluteSize = v

                        changechildrenudim2size(self, v)
                        changechildrenudim2pos(self, v)

                        if customproperties.ClipsDescendants then
                            for _, object in next, objchildren[self] do
                                object.Visible = istouching(object.Position, object.Size, obj.Position, v) and objvisibles[object] or false
                            end
                        end

                        if customproperties.Parent and custompropertygets[mtobjs[customproperties.Parent]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false
                            changechildrenvis(self, istouching(obj.Position, v, mtobjs[customproperties.Parent].Position, mtobjs[customproperties.Parent].Size) and objvisibles[obj] or false)
                        end
                    end

                    if typeof(v) == "Vector2" then
                        v = Vector2.new(math.floor(v.X), math.floor(v.Y))
                    end
                end

                if k == "Parent" then
                    assert(type(v) == "table", "Invalid type " .. type(v) .. " for parent")

                    table.insert(objchildren[v], obj)
                    table.insert(objmtchildren[v], self)

                    changechildrenvis(v, mtobjs[v].Visible)

                    if udim2sizeobjs[obj] then
                        local newsize = udim2tovector2(udim2sizeobjs[obj], mtobjs[v].Size)
                        obj.Size = newsize

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(obj.Position, newsize, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenudim2pos(self, newsize)
                    end

                    if listobjs[v] then
                        table.insert(listchildren[v], obj)
                        table.insert(listindexes[v], listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]))

                        local newpos = Vector2.new(0, listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]))

                        if scrollobjs[v] then
                            newpos = Vector2.new(0, listcontents[v] + (#listchildren[v] == 1 and 0 or objpaddings[v]) + scrollpositions[v])
                        end

                        listadds[v][obj] = obj.Size.Y + (#listchildren[v] == 1 and 0 or objpaddings[v])

                        listcontents[v] = listcontents[v] + obj.Size.Y + (#listchildren[v] == 1 and 0 or objpaddings[v])

                        obj.Position = newpos

                        customproperties.AbsolutePosition = newpos

                        changechildrenpos(self, newpos)
                    end

                    if udim2posobjs[obj] then
                        local newpos = mtobjs[v].Position + udim2tovector2(udim2posobjs[obj], mtobjs[v].Size)
                        objpositions[obj] = udim2tovector2(udim2posobjs[obj], mtobjs[v].Size)
                        obj.Position = newpos
                        customproperties.AbsolutePosition = newpos

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(newpos, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenpos(self, newpos)
                    elseif shape ~= "Line" and shape ~= "Quad" and shape ~= "Triangle" then
                        local newpos = mtobjs[v].Position + obj.Position
                        obj.Position = newpos
                        customproperties.AbsolutePosition = newpos

                        if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                            obj.Visible = istouching(newpos, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                        end

                        changechildrenpos(self, newpos)
                    end

                    if custompropertygets[mtobjs[v]]("ClipsDescendants") then
                        obj.Visible = istouching(obj.Position, obj.Size, mtobjs[v].Position, mtobjs[v].Size) and objvisibles[obj] or false
                    end

                    customproperties.Parent = v
                    return
                end

                obj[k] = v
            end
        })

        objmts[obj] = mt
        mtobjs[mt] = obj
        objchildren[mt] = {}
        objmtchildren[mt] = {}

        if shape ~= "Line" and shape ~= "Quad" and shape ~= "Triangle" then
            mt.Position = Vector2.new(0, 0)
        end

        mt.Visible = true

        return mt
    end
end

local Render = drawing;
Library.__index = Library;
Library.Pages.__index = Library.Pages;
Library.Sections.__index = Library.Sections;

-- // Functions
do -- Rendering
    function Library:NewDrawing(class, properties, no_cache)
        properties = properties or {}

        local object = Render:new(class)

        if not no_cache then
            Library.Objects[object] = object
        end

        if class == "Text" then
            Library.Text[object] = object
        end

        for property, value in next, properties do
            if property == "Theme" then
                Library.ThemeObjects.Objects[object] = value
                property = "Color"
                value = Library.Theme[value]
            end

            object[property] = value
        end

        return object
    end;
    --
    function Library:NewOutline(obj, color, zin, ignore)
        local outline = Render:new("Square")
        if not no_cache then
            Library.Objects[outline] = outline
        end
        outline.Parent = obj
        outline.Size = UDim2.new(1, 2, 1, 2)
        outline.Position = UDim2.new(0, -1, 0, -1)
        outline.ZIndex = zin or obj.ZIndex - 1

        if typeof(color) == "Color3" then
            outline.Color = color
        else
            outline.Color = Library.Theme[color]
            Library.ThemeObjects.Objects[outline] = color
        end

        outline.Parent = obj
        outline.Filled = false
        outline.Thickness = 1

        return outline
    end;
end;
--
do -- Misc Functions
    function Library:Connection(Signal, Callback)
        local Con = Signal:Connect(Callback)
        return Con
    end;
    --
    function Library:Disconnect(Connection)
        Connection:Disconnect()
    end;
    --
    function Library:Round(Number, Float)
        return Float * math.floor(Number / Float);
    end;
    --
    function Library:Flag()
        Library.UnNamedFlags = Library.UnNamedFlags + 1
        return string.format("%.14g", Library.UnNamedFlags)
    end;
    --
    function Library:LoadTheme(ThemeType, Themes)
        if Themes[ThemeType] then
            local ThemeValue = game.HttpService:JSONDecode(Themes[ThemeType][2])
            
            for Index, Value in pairs(ThemeValue) do
                Library:ChangeThemeColor(Index, Color3.fromHex(Value));
            end;
        end;
    end;
    --
    function Library:ChangeObjectTheme(Object, Color)
        Library.ThemeObjects.Objects[Object] = Color
        Object.Color = Library.Theme[Color]
    end;
    --
    function Library:ChangeThemeColor(Option, Color)
        self.Theme[Option] = Color

        for obj, theme in next, Library.ThemeObjects.Objects do
            if rawget(obj, "exists") == true and theme == Option then
                obj.Color = Color
            end
        end
    end;
    --
    function Library:GetTextLength(str, font, fontsize)
        local text = Drawing.new("Text")
        text.Text = str
        text.Font = font
        text.Size = fontsize

        local textbounds = text.TextBounds
        text:Remove()

        return textbounds
    end;
    --
    function Library:RGBA(r, g, b, alpha)
        local rgb = Color3.fromRGB(r, g, b)
        local mt = table.clone(getrawmetatable(rgb))
        
        setreadonly(mt, false)
        local old = mt.__index
        
        mt.__index = newcclosure(function(self, key)
            if key == "Transparency" then
                return alpha
            end
            
            return old(self, key)
        end)
        
        setrawmetatable(rgb, mt)
        
        return rgb
    end;
    --
    function Library:WrapText(Text, Size)
        local Max = (Size / 7)
        --
        return Text:sub(0, Max)
    end;
    --
    function Library:GetConfig()
        local Config = "";
        for Index, Value in pairs(self.Flags) do
            if Index ~= "ConfigConfig_List" and Index ~= "ConfigConfig_Load" and Index ~= "ConfigConfig_Save" then
                local Value2 = Value
                local Final = ""
                --
                if typeof(Value2) == "Color3" then
                    local hue, sat, val = Value2:ToHSV();
                    --
                    Final = ("rgb(%s,%s,%s,%s)"):format(hue, sat, val, Value2.Transparency)
                elseif typeof(Value2) == "table" and Value2.Color and Value2.Transparency then
                    local hue, sat, val = Value2.Color:ToHSV()
                    --
                    Final = ("rgb(%s,%s,%s,%s)"):format(hue, sat, val, Value2.Transparency)
                elseif typeof(Value2) == "table" and Value.Mode then
                    local Values = Value.current
                    --
                    Final = ("key(%s,%s,%s)"):format(Values[1] or "nil", Values[2] or "nil", Value.Mode)
                elseif typeof(Value2) == "EnumItem" then
                    -- Convert EnumItem to string
                    Final = tostring(Value2)
                elseif (Value2 ~= nil) then
                    if typeof(Value2) == "boolean" then
                        Value2 = ("bool(%s)"):format(tostring(Value2))
                    elseif typeof(Value2) == "table" then
                        local New = "table("
                        --
                        for Index2, Value3 in pairs(Value2) do
                            New = New .. Value3 .. ","
                        end
                        --
                        if New:sub(#New) == "," then
                            New = New:sub(0, #New - 1)
                        end
                        --
                        Value2 = New .. ")"
                    elseif typeof(Value2) == "string" then
                        Value2 = ("string(%s)"):format(Value2)
                    elseif typeof(Value2) == "number" then
                        Value2 = ("number(%s)"):format(Value2)
                    end
                    --
                    Final = Value2
                end
                --
                Config = Config .. Index .. ": " .. Final .. "\n"
            end
        end
        --
        return Config
    end    
    --
    function Library:LoadConfig(Config)
        local Table = string.split(Config, "\n")
        local Table2 = {};
        for Index, Value in pairs(Table) do
            local Table3 = string.split(Value, ":")
            --
            if Table3[1] ~= "ConfigConfig_List" and #Table3 >= 2 then
                local Value = Table3[2]:sub(2, #Table3[2])
                --
                if Value:sub(1, 3) == "rgb" then
                    local Table4 = string.split(Value:sub(5, #Value - 1), ",")
                    --
                    Value = Table4
                elseif Value:sub(1, 3) == "key" then
                    local Table4 = string.split(Value:sub(5, #Value - 1), ",")
                    --
                    if Table4[1] == "nil" and Table4[2] == "nil" then
                        Table4[1] = nil
                        Table4[2] = nil
                    end
                    --
                    Value = Table4
                elseif Value:sub(1, 4) == "bool" then
                    local Bool = Value:sub(6, #Value - 1)
                    --
                    Value = Bool == "true"
                elseif Value:sub(1, 5) == "table" then
                    local Table4 = string.split(Value:sub(7, #Value - 1), ",")
                    --
                    Value = Table4
                elseif Value:sub(1, 6) == "string" then
                    local String = Value:sub(8, #Value - 1)
                    --
                    Value = String
                elseif Value:sub(1, 6) == "number" then
                    local Number = tonumber(Value:sub(8, #Value - 1))
                    --
                    Value = Number
                end
                --
                Table2[Table3[1]] = Value
            end
        end
        --             
        for i,v in pairs(Table2) do
            if Flags[i] then
                if typeof(Flags[i]) == "table" then
                    Flags[i]:Set(v);
                else
                    Flags[i](v);
                end
            end;
        end;
    end;
    --
    function Library:SetOpen(bool)
        if typeof(bool) == 'boolean' then
            self.Open = bool;
    
            self.Window.Visible = bool
            --// self.Cursor.Visible = bool
            --// self.CursorOutline.Visible = bool
            --// game:GetService("UserInputService").MouseIconEnabled = not bool

            local ContextActionService = game:GetService("ContextActionService")
            if bool then  
                local ContextActionService = game:GetService("ContextActionService")
                ContextActionService:BindAction(
                    "Scrolling",
                    function ()
                        return Enum.ContextActionResult.Sink
                    end,
                    false,
                    Enum.UserInputType.MouseWheel
                );
                ContextActionService:BindAction(
                    "Input",
                    function()
                        return Enum.ContextActionResult.Sink
                    end,
                    false,
                    Enum.UserInputType.MouseButton1
                );
            else
                ContextActionService:UnbindAction("Scrolling");
                ContextActionService:UnbindAction("Input");
            end;
        end
    end;
end;
--
do -- Elemental Functions
    function Library:NewPicker(text, default, defaultalpha, parent, count, flag, callback, offset)
        local icon = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Color = default,
            Parent = parent,
            Transparency = 1,
            Size = UDim2.new(0, 20, 0, 10),
            Position = UDim2.new(1, -30 - (count * 17) - (count * 6), 0, 4 + offset),
            ZIndex = 55
        })
        local alphaicon = Library:NewDrawing("Image", {
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 61,
            Parent = icon,
            Data = Decode("iVBORw0KGgoAAAANSUhEUgAAABIAAAAKBAMAAABLZROSAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAGUExURb+/v////5nD/3QAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAVSURBVBjTY2AQhEIkliAWSLY6QQYAknwC7Za+1vYAAAAASUVORK5CYII=")
        })

        local InnerOutline = Library:NewOutline(icon, "Border1", 55);

        Library:Connection(icon.MouseEnter, function()
            Library:ChangeObjectTheme(InnerOutline, "Accent")
        end)
        Library:Connection(icon.MouseLeave, function()
            Library:ChangeObjectTheme(InnerOutline, "Border1")
        end)

        local window = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = icon,
            Theme = "Dark Contrast",
            Size = UDim2.new(0, 206, 0, 200),
            Visible = false,
            Position = UDim2.new(1, -185 + (count * 20) + (count * 6), 1, 6),
            ZIndex = 60
        })

        table.insert(Pickers, window)

        local outline1 = Library:NewOutline(window, "Border1", 66)
        Library:NewOutline(outline1, "Border2", 66)

        local Title = Library:NewDrawing("Text", {
            Text = text;
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 4, 0, 2);
            Parent = window;
            ZIndex = 66;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = text;
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 5, 0, 3);
            Parent = window;
            ZIndex = 65;
        });

        local saturation = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = window,
            Color = default,
            Size = UDim2.new(0, 154, 0, 150),
            Position = UDim2.new(0, 6, 0, 20),
            ZIndex = 66
        })

        local satoutline = Library:NewOutline(saturation, "Border2",66)
        Library:NewOutline(satoutline, "Border1", 65)

        Library:NewDrawing("Image", {
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 66,
            Parent = saturation,
            Data = Decode("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")
        })

        local saturationpicker = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = saturation,
            Color = Color3.fromRGB(255, 255, 255),
            Size = UDim2.new(0, 2, 0, 2),
            ZIndex = 66
        })

        Library:NewOutline(saturationpicker, "Border1",66)

        local hueframe = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = window,
            Size = UDim2.new(0,15, 0, 150),
            Position = UDim2.new(0, 165, 0, 20),
            ZIndex = 66
        })

        local hueoutline = Library:NewOutline(hueframe, "Border2",66)
        Library:NewOutline(hueoutline, "Border1", 65)

        Library:NewDrawing("Image", {
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 66,
            Parent = hueframe,
            Data = Decode("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")
        })

        local huepicker = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = hueframe,
            Color = Color3.fromRGB(255, 255, 255),
            Size = UDim2.new(1,0,0,1),
            ZIndex = 66,
            Visible = true
        })

        Library:NewOutline(huepicker, "Border1",66)

        local alphaframe = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 1,
            Size = UDim2.new(0, 15, 0, 150),
            Position = UDim2.new(1, -20, 0, 20),
            ZIndex = 66,
            Parent = window
        })

        local alpoutline = Library:NewOutline(alphaframe, "Border2",66)
        Library:NewOutline(alpoutline, "Border1", 65)

        Library:NewDrawing("Image", {
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 66,
            Transparency = 1,
            Parent = alphaframe,
            Data = Decode("iVBORw0KGgoAAAANSUhEUgAAAAkAAABuCAYAAAD1YDnyAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFMSURBVFhHvZMhTMNQFEX/WOZwKBwON4dDNMHN4XBzc3M43BwOh8PhULip1s3hcLg53Nxcue9mIy/ty/8kDfcktzlpsv97xEZ1XacjVVUdLKWmaQ6W0slfNmrbdgIh/tf+1PCX3YUvu7MPP4WQQR8evuzO6s4gRFN3DiG5unFpvaOjWd0FhOTqwiv8ekdHs7pLCNHUTSFEU3cFIZq6awjR1N1AiKZuBiG5uuLsEX6Hn9XdQkiurjh7hFf4Wd0dhGjq5hCiqVtAiKZuCSGaunsI0dQ9QMjguuKsbgUhg+uKs7pHCNHUPUGIpu4ZQjR1LxCiqXuFEE3dG4Ro6t4hJFcX/mv9ekdHs7o1hOTqwiv8ekdHs7rfOzR1GwjR1H1AiKbuE0I0dV8QoqnbQkiurjh7hN/hZ3XfEJKrK84e4RV+VreDEE3dHkL+uy6NfwDz0OfO0eCa+AAAAABJRU5ErkJggg==")
        })

        local alphapicker = Library:NewDrawing("Square", {
            Filled = true,
            Thickness = 0,
            Parent = alphaframe,
            Color = Color3.fromRGB(255, 255, 255),
            Size = UDim2.new(1, 0, 0, 1),
            ZIndex = 67,
            Visible = true
        })

        Library:NewOutline(alphapicker, "Border1",66)

        local rgbinput = Library:NewDrawing("Square", {
            Filled = true,
            Transparency = 1,
            Thickness = 1,
            Theme = "Dark Contrast",
            Size = UDim2.new(1, -12, 0, 14),
            Position = UDim2.new(0, 6, 0, 180),
            ZIndex = 66,
            Parent = window
        })

        local outline2 = Library:NewOutline(rgbinput, "Border2",66)
        Library:NewOutline(outline2, "Border1",66)

        local text = Library:NewDrawing("Text", {
            Text = string.format("%s, %s, %s", math.floor(default.R * 255), math.floor(default.G * 255), math.floor(default.B * 255)),
            Font = which_font,
            Size = 9,
            Position = UDim2.new(0.5, 0, 0, 0),
            Center = true,
            Theme = "Text",
            ZIndex = 67,
            Outline = false,
            Parent = rgbinput
        })
        local textshadow = Library:NewDrawing("Text", {
            Text = string.format("%s, %s, %s", math.floor(default.R * 255), math.floor(default.G * 255), math.floor(default.B * 255)),
            Font = which_font,
            Size = 9,
            Position = UDim2.new(0.5, 1, 0, 1),
            Center = true,
            Color = Color3.new(0,0,0),
            ZIndex = 66,
            Outline = false,
            Parent = rgbinput
        })

        local mouseover = false

        local hue, sat, val = default:ToHSV()
        local hsv = default:ToHSV()
        local alpha = defaultalpha
        local oldcolor = hsv
        local toggled = false;
        local fadetoggled = false;

        local function set(color, a, nopos, setcolor)
            if type(color) == "table" then
                a = color[4]
                color = Color3.fromHSV(color[1], color[2], color[3])
            end

            if type(color) == "string" then
                color = Color3.fromHex(color)
            end

            local oldcolor = hsv
            local oldalpha = alpha

            hue, sat, val = color:ToHSV()
            alpha = a or 1
            hsv = Color3.fromHSV(hue, sat, val)

            if hsv ~= oldcolor or alpha ~= oldalpha then
                icon.Color = hsv
                alphaframe.Color = hsv
                alphaicon.Transparency = 1 - alpha

                if not nopos then
                    saturationpicker.Position = UDim2.new(0, (math.clamp(sat * saturation.AbsoluteSize.X, 0, saturation.AbsoluteSize.X - 2)), 0, (math.clamp((1 - val) * saturation.AbsoluteSize.Y, 0, saturation.AbsoluteSize.Y - 2)))
                    huepicker.Position = UDim2.new(0, math.clamp(hue * hueframe.AbsoluteSize.X, 0, hueframe.AbsoluteSize.X - 2), 0, 0)
                    alphapicker.Position = UDim2.new(0, 0, 0, math.clamp((1 - alpha) * alphaframe.AbsoluteSize.Y, 0, alphaframe.AbsoluteSize.Y - 2))
                    if setcolor then
                        saturation.Color = Color3.fromHSV(hue,1,1)
                    end
                end

                text.Text = string.format("%s, %s, %s", math.round(hsv.R * 255), math.round(hsv.G * 255), math.round(hsv.B * 255))
                textshadow.Text = string.format("%s, %s, %s", math.round(hsv.R * 255), math.round(hsv.G * 255), math.round(hsv.B * 255))

                if flag then 
                    Library.Flags[flag] = {
                        Color = Color3.fromRGB(hsv.r * 255, hsv.g * 255, hsv.b * 255),
                        Transparency = alpha
                    }
                end

                callback(Library:RGBA(hsv.r * 255, hsv.g * 255, hsv.b * 255, alpha))

            end
        end
        
        Flags[flag] = set

        set(default, defaultalpha)

        local defhue, _, _ = default:ToHSV()

        local curhuesizey = defhue

        local function updatesatval(input, set_callback)
            local sizeX = math.clamp((input.Position.X - saturation.AbsolutePosition.X) / saturation.AbsoluteSize.X, 0, 1)
            local sizeY = 1 - math.clamp(((input.Position.Y - saturation.AbsolutePosition.Y) + 36) / saturation.AbsoluteSize.Y, 0, 1)
            local posY = math.clamp(((input.Position.Y - saturation.AbsolutePosition.Y) / saturation.AbsoluteSize.Y) * saturation.AbsoluteSize.Y + 36, 0, saturation.AbsoluteSize.Y - 2)
            local posX = math.clamp(((input.Position.X - saturation.AbsolutePosition.X) / saturation.AbsoluteSize.X) * saturation.AbsoluteSize.X, 0, saturation.AbsoluteSize.X - 2)

            saturationpicker.Position = UDim2.new(0, posX, 0, posY)

            if set_callback then
                set(Color3.fromHSV(curhuesizey or hue, sizeX, sizeY), alpha or defaultalpha, true, false)
            end
        end

        local slidingsaturation = false

        saturation.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidingsaturation = true
                updatesatval(input)
            end
        end)

        saturation.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidingsaturation = false
                updatesatval(input, true)
            end
        end)

        local slidinghue = false

        local function updatehue(input, set_callback)
            local sizeY = 1 - math.clamp(((input.Position.Y - hueframe.AbsolutePosition.Y) + 36) / hueframe.AbsoluteSize.Y, 0, 1)
            local posY = math.clamp(((input.Position.Y - hueframe.AbsolutePosition.Y) / hueframe.AbsoluteSize.Y) * hueframe.AbsoluteSize.Y + 36, 0, hueframe.AbsoluteSize.Y - 2)

            huepicker.Position = UDim2.new(0, 0, 0, posY)
            saturation.Color = Color3.fromHSV(sizeY, 1, 1)
            curhuesizey = sizeY
            if set_callback then
            set(Color3.fromHSV(sizeY, sat, val), alpha or defaultalpha, true, true)
            end
        end

        hueframe.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidinghue = true
                updatehue(input)
            end
        end)

        hueframe.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidinghue = false
                updatehue(input, true)
            end
        end)

        local slidingalpha = false

        local function updatealpha(input, set_callback)
            local sizeY = 1 - math.clamp(((input.Position.Y - alphaframe.AbsolutePosition.Y) + 36) / alphaframe.AbsoluteSize.Y, 0, 1)
            local posY = math.clamp(((input.Position.Y - alphaframe.AbsolutePosition.Y) / alphaframe.AbsoluteSize.Y) * alphaframe.AbsoluteSize.Y + 36, 0, alphaframe.AbsoluteSize.Y - 2)

            alphapicker.Position = UDim2.new(0, 0, 0, posY)
            if set_callback then
            set(Color3.fromHSV(curhuesizey, sat, val), sizeY, true)
            end
        end

        alphaframe.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidingalpha = true
                updatealpha(input)
            end
        end)

        alphaframe.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                slidingalpha = false
                updatealpha(input, true)
            end
        end)

        Library:Connection(game:GetService("UserInputService").InputChanged, function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                if slidingalpha then
                    updatealpha(input)
                end

                if slidinghue then
                    updatehue(input)
                end

                if slidingsaturation then
                    updatesatval(input)
                end
            end
        end)

        icon.MouseButton1Click:Connect(function()
            for _, picker in next, Pickers do
                if picker ~= window then
                    picker.Visible = false
                end
            end

            window.Visible = not window.Visible

            if slidinghue then
                slidinghue = false
            end

            if slidingsaturation then
                slidingsaturation = false
            end

            if slidingalpha then
                slidingalpha = false
            end
        end)

        local colorpickertypes = {}

        function colorpickertypes:Set(color, alpha)
            set(color)
            updatealpha(alpha)
        end

        return colorpickertypes, window
    end;
    --
    function Library:NewBox(box, text, textshadow, callback, finishedcallback)
        local max_size = box.AbsoluteSize.X - 44
        local current_uncut_str = ""
        local string = ""
        local function update_text(str)
            local will_cut = Library:GetTextLength(str, 2, 13).X > max_size
            current_uncut_str = not will_cut and str or current_uncut_str

            text.Text = current_uncut_str .. (will_cut and "..." or "") 
            textshadow.Text = current_uncut_str .. (will_cut and "..." or "")
        end
        box.MouseButton1Click:Connect(function()
            Library:ChangeObjectTheme(text, "Accent")
            game:GetService("ContextActionService"):BindActionAtPriority("disablekeyboard", function() return Enum.ContextActionResult.Sink end, false, 3000, Enum.UserInputType.Keyboard)

            local connection
            local backspaceconnection

            local keyqueue = 0

            if not connection then
                connection = Library:Connection(game:GetService("UserInputService").InputBegan, function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        if input.KeyCode ~= Enum.KeyCode.Backspace then
                            local str = game:GetService("UserInputService"):GetStringForKeyCode(input.KeyCode)

                            if table.find(Library.AllowedCharacters, str) then
                                keyqueue = keyqueue + 1
                                local currentqueue = keyqueue

                                if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.RightShift) and not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                                    string = string .. str:lower()
                                    update_text(string)

                                    callback(text.Text)

                                    local ended = false

                                    coroutine.wrap(function()
                                        task.wait(0.5)

                                        while game:GetService("UserInputService"):IsKeyDown(input.KeyCode) and currentqueue == keyqueue  do
                                            string = string .. str:lower()
                                            update_text(string)
                                            callback(text.Text)

                                            task.wait(0.02)
                                        end
                                    end)()
                                else
                                    string = string .. (Library.ShiftCharacters[str] or str:upper())
                                    update_text(string)
                                    callback(text.Text)

                                    coroutine.wrap(function()
                                        task.wait(0.5)

                                        while game:GetService("UserInputService"):IsKeyDown(input.KeyCode) and currentqueue == keyqueue  do
                                            string = string .. (Library.ShiftCharacters[str] or str:upper())
                                            update_text(string)
                                            callback(text.Text)

                                            task.wait(0.02)
                                        end
                                    end)()
                                end
                            end
                        end

                        if input.KeyCode == Enum.KeyCode.Return then
                            game:GetService("ContextActionService"):UnbindAction("disablekeyboard")
                            Library:Disconnect(backspaceconnection)
                            Library:Disconnect(connection)
                            finishedcallback(text.Text)
                            Library:ChangeObjectTheme(text, "Text")
                        end
                    elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
                        game:GetService("ContextActionService"):UnbindAction("disablekeyboard")
                        Library:Disconnect(backspaceconnection)
                        Library:Disconnect(connection)
                        finishedcallback(text.Text)
                        Library:ChangeObjectTheme(text, "Text")
                    end
                end)

                local backspacequeue = 0

                backspaceconnection = Library:Connection(game:GetService("UserInputService").InputBegan, function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Backspace then
                        backspacequeue = backspacequeue + 1
                        string = string:sub(1, -2)
                        update_text(string)
                        callback(text.Text)

                        local currentqueue = backspacequeue

                        coroutine.wrap(function()
                            task.wait(0.5)

                            if backspacequeue == currentqueue then
                                while game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Backspace) do
                                    string = string:sub(1, -2)
                                    update_text(string)
                                    callback(text.Text)

                                    task.wait(0.02)
                                end
                            end
                        end)()
                    end
                end)
            end
        end)
    end;
end;

-- // Main Elements
do
    local Pages = Library.Pages;
    local Sections = Library.Sections;
    --
    function Library:Window(Properties)
        local Window = {
            Pages = {};
            PageAxis = 0;
            Dragging = {false, UDim2.new(0, 0, 0, 0)};
            Resizing = {false, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0)};
            Resized = nil;
            OpenDropdown = nil;
            Elements = {};
        };

        -- // Drawings
        local MainFrame = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Theme = "Light Contrast";
            Size = Properties.Size or UDim2.new(0, 500, 0, 600);
            Position = UDim2.new(0, 100, 0, 100);
            ZIndex = 50;
        });
        Library:NewOutline(MainFrame, "Border1")
        Library.Window = MainFrame;
        local MainFrameOutline = Library:NewDrawing("Square", {
            Visible = true;
            Filled = false;
            Thickness = 1;
            Theme = "Accent";
            Size = UDim2.new(1,4,1,4);
            Position = UDim2.new(0,-2,0,-2);
            ZIndex = MainFrame.ZIndex - 1;
            Parent = MainFrame;
        });
        Library:NewOutline(MainFrameOutline, "Border1")
        local InnerFrame = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Theme = "Dark Contrast";
            Size = UDim2.new(1,-10,1,-25);
            Position = UDim2.new(0,5,0,20);
            ZIndex = 51;
            Parent = MainFrame;
        });
        Library:NewOutline(InnerFrame, "Border1")
        local InnerFrameOutline = Library:NewDrawing("Square", {
            Visible = true;
            Filled = false;
            Thickness = 1;
            Theme = "Border2";
            Size = UDim2.new(1,4,1,4);
            Position = UDim2.new(0,-2,0,-2);
            ZIndex = InnerFrame.ZIndex - 1;
            Parent = InnerFrame;
        });

        -- Title
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 4, 0, 2);
            Parent = MainFrame;
            ZIndex = 51;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 5, 0, 3);
            Parent = MainFrame;
            ZIndex = 50;
        });

        -- Sub Title
        local SubTitle = Library:NewDrawing("Text", {
            Text = Properties.Sub or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Accent";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 4 + Title.TextBounds.X, 0, 2);
            Parent = MainFrame;
            ZIndex = 51;
        });
        local SubTitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Sub or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 5 + Title.TextBounds.X, 0, 3);
            Parent = MainFrame;
            ZIndex = 50;
        });

        -- Extra
        local Extra = Library:NewDrawing("Text", {
            Text = Properties.Extra or "";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 10 + Title.TextBounds.X + SubTitle.TextBounds.X, 0, 2);
            Parent = MainFrame;
            ZIndex = 51;
        });
        local ExtraShadow = Library:NewDrawing("Text", {
            Text = Properties.Extra or "";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 11 + Title.TextBounds.X + SubTitle.TextBounds.X, 0, 3);
            Parent = MainFrame;
            ZIndex = 50;
        });

        -- // Set name
        function Window:SetName(TitleS, Sub, ExtraS)
            Title.Text = TitleS;
            TitleShadow.Text = TitleS;
            SubTitle.Text = Sub;
            SubTitleShadow.Text = Sub;
            Extra.Text = ExtraS;
            ExtraShadow.Text = ExtraS;

            -- Reposition
            Title.Position = UDim2.new(0, 4, 0, 2);
            TitleShadow.Position = UDim2.new(0, 5, 0, 3);
            SubTitle.Position = UDim2.new(0, 4 + Title.TextBounds.X, 0, 2);
            SubTitleShadow.Position = UDim2.new(0, 5 + Title.TextBounds.X, 0, 3);
            Extra.Position = UDim2.new(0, 10 + Title.TextBounds.X + SubTitle.TextBounds.X, 0, 2);
            ExtraShadow.Position = UDim2.new(0, 11 + Title.TextBounds.X + SubTitle.TextBounds.X, 0, 3);
        end;

        -- Rest
        local TabButtonHolder = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,-20,0, 20);
            Position = UDim2.new(0,10,0,15);
            ZIndex = 52;
            Parent = InnerFrame;
        });
        local TabButtonHolderOutline = Library:NewDrawing("Square", {
            Visible = true;
            Filled = false;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,4,1,4);
            Position = UDim2.new(0,-2,0,-2);
            ZIndex = 51;
            Parent = TabButtonHolder;
            Theme = "Border2";
        });
        --// local Cursor = Library:NewDrawing('Quad', {
        --//     Theme = "Accent",
        --//     Visible = true,
        --//     Filled = true,
        --//     ZIndex = 1000,
        --// })
        --// Library.Cursor = Cursor;
        --// local CursorOutline = Library:NewDrawing('Quad', {
        --//     Theme = "Border1",
        --//     Visible = true,
        --//     Filled = true,
        --//     ZIndex = 999,
        --// })
        --// game:GetService("UserInputService").MouseIconEnabled = not Library.Open
        --// Library.CursorOutline = CursorOutline;
        -- // Buttons
        local Dragger = Library:NewDrawing("Square", {
            Parent = MainFrame,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            ZIndex = 50,
            Size = UDim2.new(1, -2, 0, 14),
            Position = UDim2.new(0, 1, 0, 1);
            ZIndex = 50;
        });

        -- // Dragging
        Library:Connection(Dragger.MouseButton1Down, function()
            local Location = game:GetService("UserInputService"):GetMouseLocation();
            Window.Dragging[1] = true;
            Window.Dragging[2] = UDim2.new(0, Location.X - MainFrame.AbsolutePosition.X, 0, Location.Y - MainFrame.AbsolutePosition.Y);
        end);
        Library:Connection(Dragger.MouseButton1Up, function()
            Window.Dragging[1] = false;
            Window.Dragging[2] = UDim2.new(0, 0, 0, 0);
        end);
        Library:Connection(game:GetService("UserInputService").InputChanged, function(Input)
            local Location = game:GetService("UserInputService"):GetMouseLocation();
            local ActualLocation = nil;
            if Window.Dragging[1] then
                --ActualLocation = Vector2.new(math.clamp(Location.X, 9, (workspace.CurrentCamera.ViewportSize.X + 9) - MainFrame.AbsoluteSize.X), math.clamp(Location.Y, 23, (workspace.CurrentCamera.ViewportSize.Y + 23) - MainFrame.AbsoluteSize.Y))
                MainFrame.Position = UDim2.new(0, Location.X - Window.Dragging[2].X.Offset, 0, Location.Y - Window.Dragging[2].Y.Offset);
                --MainFrame.Position = UDim2.new(0, ActualLocation.X - Window.Dragging[2].X.Offset, 0, Location.Y - Window.Dragging[2].Y.Offset);
            end;
            --// if Input.UserInputType == Enum.UserInputType.MouseMovement and Library.Open then
            --//     if Cursor.Visible then
            --//         Cursor.PointA = Location
            --//         Cursor.PointB = Location + Vector2.new(10,8)
            --//         Cursor.PointC = Location + Vector2.new(4,8)
            --//         Cursor.PointD = Location + Vector2.new(0,13)
            --//         CursorOutline.PointA = Cursor.PointA + Vector2.new(-1,-2)
            --//         CursorOutline.PointB = Cursor.PointB + Vector2.new(2,0)
            --//         CursorOutline.PointC = Cursor.PointC + Vector2.new(-1,3)
            --//         CursorOutline.PointD = Cursor.PointD + Vector2.new(-1,2)
            --//     end
            --// end;
        end);

        -- // Functions
        function Window:UpdateTabs()
            for Index, Page in pairs(Window.Pages) do
                Page.Elements.PageButtonOutline.Size = UDim2.new(1 / #self.Pages, Index == #self.Pages and 1 or 1, 1, 0)
                Page.Elements.PageButtonOutline.Position = UDim2.new((Index - 1) * (1 / #self.Pages), 0, 0, 0)
                Page:Turn(Page.Open)
            end;
        end;
        --
        function Window:Update() -- Shitty Fix :(
            MainFrame.Position = UDim2.new(MainFrame.Position.X.Scale,MainFrame.Position.X.Offset,MainFrame.Position.Y.Scale,MainFrame.Position.Y.Offset);
        end;
        -- // Elements
        Window.Elements = {
            MainFrame = MainFrame;
            MainFrameInner = InnerFrame;
            MainFrameInner2 = InnerFrameOutline;
            Title = Title;
            TitleShadow = TitleShadow;
            MainFrameOutline = MainFrameOutline;
            TabFrame = TabButtonHolder;
        };

        -- // Returns
        return setmetatable(Window, Library);
    end;
    --
    function Library:Tab(Properties)
        local Page = {
            Window = self;
            Open = false;
            Sections = {};
            Elements = {};
        };

        -- // Drawings
        local TabInnerFrame = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Theme = "Light Contrast";
            ZIndex = 52;
            Parent = Page.Window.Elements.TabFrame;
            Size = UDim2.new(1,0,1,0);
        });
        Library:NewOutline(TabInnerFrame, "Border1", 52)
        local AccentLine = Library:NewDrawing("Square", {
            Visible = Page.Open;
            Filled = true;
            Thickness = 1;
            Theme = "Accent";
            ZIndex = 53;
            Parent = TabInnerFrame;
            Size = not Properties.TabLine and UDim2.new(1,-2,0,2) or UDim2.new(1,0,0,2);
            Position = UDim2.new(0, -1, 0, 0);
        });
        local TabTitle = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 2, 0, 4);
            Parent = TabInnerFrame;
            ZIndex = 53;
        });
        local TabTitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 3, 0, 5);
            Parent = TabInnerFrame;
            ZIndex = 52;
        });
        local TabHolder = Library:NewDrawing("Square", {
            Visible = false;
            Filled = true;
            Thickness = 1;
            Transparency = 0;
            Color = Color3.fromRGB(20, 20, 25);
            Size = UDim2.new(1, -20, 1, -80);
            Position = UDim2.new(0, 10, 0, 50);
            Parent = Page.Window.Elements.MainFrameInner;
            ZIndex = 51;
        });

        -- // Section Holders
        local Left = Library:NewDrawing("Square", {Transparency = 0, Filled = false, Thickness = 1, ZIndex = 51,Parent = TabHolder, Size = UDim2.new(0.5, -14, 1, -10), Position = UDim2.new(0, -2, 0, 0)});
        local Right = Library:NewDrawing("Square", {Transparency = 0, Filled = false, Thickness = 1, Parent = TabHolder, ZIndex = 51, Size = UDim2.new(0.5, -14, 1, -10),Position = UDim2.new(0.5, 16, 0, 0)});
        Left:AddListLayout(3);
        Right:AddListLayout(3);

        -- // Hover Effect
        Library:Connection(TabInnerFrame.MouseEnter, function()
            Library.ThemeObjects[TabTitle] = Library.Theme["Accent"];
            TabTitle.Color = Library.Theme["Accent"];
        end);
        --
        Library:Connection(TabInnerFrame.MouseLeave, function()
            Library.ThemeObjects[TabTitle] = Library.Theme["Text"];
            TabTitle.Color = Library.Theme["Text"];
        end);

        -- // Open Page
        function Page:Turn(bool)
            Page.Open = bool
            AccentLine.Visible = Page.Open
            TabHolder.Visible = Page.Open
        end;

        Library:Connection(TabInnerFrame.MouseButton1Click, function()
            if not Page.Open then
                Page:Turn(true)
                for index, other_page in pairs(Page.Window.Pages) do
                    if other_page.Open and other_page ~= Page then
                        other_page:Turn(false)
                    end
                end
            end
        end)
        
        if #Page.Window.Pages == 0 then
            Page:Turn(true);
        end;

        -- // Elements
        Page.Elements = {
            PageButtonOutline = TabInnerFrame;
            Title = TabTitle;
            TabHolder = TabHolder;
            Left = Left;
            Right = Right;
        };

        Page.Window.Pages[#Page.Window.Pages + 1] = Page;
        Page.Window:UpdateTabs();
        return setmetatable(Page, Library.Pages);
    end;
    --
    function Pages:NestedTab(Properties)

        -- // Drawings
        local TabButtonHolder = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,-20,0, 20);
            Position = UDim2.new(0,10,0,15);
            ZIndex = 52;
            Parent = InnerFrame;
        });
        local TabButtonHolderOutline = Library:NewDrawing("Square", {
            Visible = true;
            Filled = false;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,4,1,4);
            Position = UDim2.new(0,-2,0,-2);
            ZIndex = 51;
            Parent = TabButtonHolder;
            Theme = "Border2";
        });
    end;
    --
    function Pages:Section(Properties)
        local Section = {
            Window = self.Window,
            Page = self,
            Open = false,
            Side = (Properties.side or Properties.Side or "left"):lower(),
            Content = {},
            ContentAxis = 0;
            Elements = {};
        };

        -- // Drawings
        local SectionHolderOutline = Library:NewDrawing("Square", {
            Parent = (Section.Side == "right" and Section.Page.Elements.Right or Section.Side == "left" and Section.Page.Elements.Left or Section.Page.Elements.Left),
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Border1",
            Size = UDim2.new(1,0,0,20)
        });

        local SectionHolderInline = Library:NewDrawing("Square", {
            Parent = SectionHolderOutline,
            Visible = true,
            Filled = false,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Border2",
            Size = UDim2.new(1, -2, 1, -2),
            Position = UDim2.new(0, 1, 0, 1)
        });
        local SectionHolderMain = Library:NewDrawing("Square", {
            Parent = SectionHolderInline,
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Dark Contrast",
            Size = UDim2.new(1, -2, 1, -2),
            Position = UDim2.new(0, 1, 0, 1),
        });
        Library:NewOutline(SectionHolderMain, "Border1")
        --[[local TopBarOutline = Library:NewDrawing("Square", {
            Parent = SectionHolderOutline,
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Accent",
            Size = UDim2.new(1, -4, 0, 1),
            Position = UDim2.new(0, 2, 0, 2),
        });]]
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 2, 0, 0);
            Parent = SectionHolderMain;
            ZIndex = 54;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 3, 0, 1);
            Parent = SectionHolderMain;
            ZIndex = 53;
        });
        local SectionContent = Library:NewDrawing("Square", {
            Transparency = 0,
            Size = UDim2.new(1, -22, 1, -28),
            Position = UDim2.new(0, 8, 0, 20),
            Parent = SectionHolderOutline,
            ZIndex = 53,
            Thickness = 0,
            Filled = false
        });
        SectionContent:AddListLayout(3);

        -- // Elements
        Section.Elements = {
            SectionHolderOutline = SectionHolderOutline;
            SectionHolderInline = SectionHolderInline;
            SectionHolderMain = SectionHolderMain;
            TopBarOutline = TopBarOutline;
            SectionContent = SectionContent;
        }

        -- // Functions
        function Section:Update(Value)
            SectionHolderOutline.Size = UDim2.new(1,0, 0, SectionContent.AbsoluteContentSize + Value)
        end;

        -- // Returning
        Section.Page.Sections[#Section.Page.Sections + 1] = Section;
        return setmetatable(Section, Library.Sections)
    end;
    --
    function Pages:MultiSection(Properties)
        local Section = {
            Window = self.Window,
            Page = self,
            Open = false,
            Sections = (Properties.sections or Properties.Sections or {}),
            Side = (Properties.side or Properties.Side or "left"):lower(),
            --Size = (Properties.size or Properties.Size or 200),
            NoUpdate = true,
            Content = {},
            ContentAxis = 0;
            Elements = {};
            ActualSections = {};
        };

        -- // Drawings
        local SectionHolderOutline = Library:NewDrawing("Square", {
            Parent = (Section.Side == "right" and Section.Page.Elements.Right or Section.Side == "left" and Section.Page.Elements.Left or Section.Page.Elements.Left),
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Border1",
            Size = UDim2.new(1,0,0,0)
        });

        local SectionHolderInline = Library:NewDrawing("Square", {
            Parent = SectionHolderOutline,
            Visible = true,
            Filled = false,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Border2",
            Size = UDim2.new(1, -2, 1, -2),
            Position = UDim2.new(0, 1, 0, 1)
        });
        local SectionHolderMain = Library:NewDrawing("Square", {
            Parent = SectionHolderInline,
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Dark Contrast",
            Size = UDim2.new(1, -2, 1, -2),
            Position = UDim2.new(0, 1, 0, 1),
        });
        Library:NewOutline(SectionHolderMain, "Border1")
        --[[local TopBarOutline = Library:NewDrawing("Square", {
            Parent = SectionHolderOutline,
            Visible = true,
            Filled = true,
            Thickness = 1,
            ZIndex = 53,
            Theme = "Accent",
            Size = UDim2.new(1, -4, 0, 1),
            Position = UDim2.new(0, 2, 0, 2),
        });]]
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 2, 0, 0);
            Parent = SectionHolderMain;
            ZIndex = 54;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 3, 0, 1);
            Parent = SectionHolderMain;
            ZIndex = 53;
        });
        local SectionButtonHolder = Library:NewDrawing("Square", {
            Visible = true;
            Filled = true;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,-14,0, 20);
            Position = UDim2.new(0,7,0,20);
            ZIndex = 54;
            Parent = SectionHolderMain;
        });
        local SectionButtonHolderOutline = Library:NewDrawing("Square", {
            Visible = true;
            Filled = false;
            Thickness = 1;
            Transparency = 1;
            Size = UDim2.new(1,4,1,4);
            Position = UDim2.new(0,-2,0,-2);
            ZIndex = 53;
            Parent = SectionButtonHolder;
            Theme = "Border2";
        });
        
        -- // Elements
        Section.Elements = {
            SectionHolderOutline = SectionHolderOutline;
            SectionButtonHolder = SectionButtonHolder;
            SectionHolderInline = SectionHolderInline;
            SectionHolderMain = SectionHolderMain;
            TopBarOutline = TopBarOutline;
        }
        local SectionShit = Section.Sections;
        local SectionShit2 = Section;
        local SectionButtons = {};

        for I, V in next, SectionShit do
            local MultiSection = {
                Window = self.Window,
                Page = self.Page,
                Section = self,
                Open = false,
                Content = {},
                NoUpdate = true,
                ContentAxis = 0;
                Elements = {};
            };

            -- // Drawings
            local TabInnerFrame = Library:NewDrawing("Square", {
                Visible = true;
                Filled = true;
                Thickness = 1;
                Theme = "Light Contrast";
                ZIndex = 54;
                Parent = SectionButtonHolder;
                Size = UDim2.new(1,0,1,0);
            });
            Library:NewOutline(TabInnerFrame, "Border1", 54)
            if not Properties.TabLine then
                local TabLine = Library:NewDrawing("Square", {
                    Visible = true;
                    Filled = true;
                    Thickness = 1;
                    Theme = "Border1";
                    ZIndex = 53;
                    Parent = TabInnerFrame;
                    Size = UDim2.new(0,1,1,0);
                    Position = UDim2.new(1,-2,0,0);
                });
            end;
            local AccentLine = Library:NewDrawing("Square", {
                Visible = MultiSection.Open;
                Filled = true;
                Thickness = 1;
                Theme = "Accent";
                ZIndex = 54;
                Parent = TabInnerFrame;
                Size = UDim2.new(1, -1, 0, 2);
                Position = UDim2.new(0, -1, 0, 0);
            });
            local TabTitle = Library:NewDrawing("Text", {
                Text = V:lower();
                Size = 9;
                Font = which_font;
                Theme = "Text";
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 2, 0, 4);
                Parent = TabInnerFrame;
                ZIndex = 55;
            });
            local TabTitleShadow = Library:NewDrawing("Text", {
                Text = V:lower();
                Size = 9;
                Font = which_font;
                Color = Color3.fromRGB();
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 3, 0, 5);
                Parent = TabInnerFrame;
                ZIndex = 54;
            });
            local SectionContent = Library:NewDrawing("Square", {
                Transparency = 0,
                Size = UDim2.new(1, -22, 1, -28),
                Position = UDim2.new(0, 8, 0, 50),
                Parent = SectionHolderOutline,
                ZIndex = 53,
                Thickness = 0,
                Filled = false,
                Visible = false
            });
            SectionContent:AddListLayout(3);
            table.insert(SectionButtons, TabInnerFrame)

            -- // Functions
            Library:Connection(TabInnerFrame.MouseEnter, function()
                Library.ThemeObjects[TabTitle] = Library.Theme["Accent"];
                TabTitle.Color = Library.Theme["Accent"];
            end);
            --
            Library:Connection(TabInnerFrame.MouseLeave, function()
                Library.ThemeObjects[TabTitle] = Library.Theme["Text"];
                TabTitle.Color = Library.Theme["Text"];
            end);

            -- // Update
            for Index, Section in next, SectionButtons do
                Section.Size = UDim2.new(1 / #SectionButtons, Index == #SectionButtons and 0 or 1, 1, 0)
                Section.Position = UDim2.new((Index - 1) * (1 / #SectionButtons), 0, 0, 0)
            end;

            -- // Open MultiSection
            function MultiSection:Turn(bool)
                MultiSection.Open = bool
                AccentLine.Visible = MultiSection.Open
                SectionContent.Visible = MultiSection.Open
                if bool then
                    SectionHolderOutline.Size = UDim2.new(1,0, 0, SectionContent.AbsoluteContentSize + 64) -- 5 hours for this!
                    MultiSection.Window:Update()
                end;
            end;

            function MultiSection:Update()
                SectionHolderOutline.Size = UDim2.new(1,0, 0, SectionContent.AbsoluteContentSize + 64)
            end;
        
            Library:Connection(TabInnerFrame.MouseButton1Click, function()
                if not MultiSection.Open then
                    MultiSection:Turn(true)
                    for index, other_page in pairs(SectionShit2.ActualSections) do
                        if other_page.Open and other_page ~= MultiSection then
                            other_page:Turn(false)
                        end
                    end
                end
            end)
            
            MultiSection:Turn(true)
            for index, other_page in pairs(SectionShit2.ActualSections) do
                if other_page.Open and other_page ~= MultiSection then
                    other_page:Turn(false)
                end
            end
            -- // Elements
            MultiSection.Elements = {
                PageButtonOutline = TabInnerFrame;
                Title = TabTitle;
                SectionContent = SectionContent;
            };

            -- // Returning
            --SectionShit2.Page.Sections[#SectionShit2.Page.Sections + 1] = MultiSection;
            SectionShit2.ActualSections[#SectionShit2.ActualSections + 1] = setmetatable(MultiSection, Library.Sections)
            --return setmetatable(MultiSection, Library.Sections)
        end;

        -- // Returning
        Section.Page.Sections[#Section.Page.Sections + 1] = Section;
    
        return table.unpack(Section.ActualSections)
    end;
    --
    function Sections:Toggle(Properties)
        local Properties = Properties or {}
        local Toggle = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or false),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag()),
            Toggled = false;
            Colorpickers = 0;
        }

        -- // Elements
        local ToggleHolder = Library:NewDrawing("Square", {
            Parent = Toggle.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, 16),
            ZIndex = 53,
        });
        local ToggleFrame = Library:NewDrawing("Square", {
            Parent = ToggleHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(0,6,0,6),
            Position = UDim2.new(0,3,0,5),
            ZIndex = 56,
            Theme = "Dark Contrast"
        });
        --
        local InnerOutline = Library:NewOutline(ToggleFrame, "Border1");
        local MidOutline = Library:NewOutline(InnerOutline, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");
        --
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 20, 0, 1);
            Parent = ToggleHolder;
            ZIndex = 54;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 21, 0, 2);
            Parent = ToggleHolder;
            ZIndex = 53;
        });

        -- // Functions
        local function SetState()
            Toggle.Toggled = not Toggle.Toggled
            if Toggle.Toggled then
                Library:ChangeObjectTheme(ToggleFrame, "Accent")
                Library:ChangeObjectTheme(MidOutline, "Accent")
                Library:ChangeObjectTheme(Title, "Light Text")
            else
                Library:ChangeObjectTheme(ToggleFrame, "Dark Contrast")
                Library:ChangeObjectTheme(MidOutline, "Border2")
                Library:ChangeObjectTheme(Title, "Text")
            end
            Library.Flags[Toggle.Flag] = Toggle.Toggled
            Toggle.Callback(Toggle.Toggled)
        end;
        Library:Connection(ToggleHolder.MouseButton1Click, SetState);
        Library:Connection(ToggleHolder.MouseEnter, function()
            if not Toggle.Toggled then
                Library:ChangeObjectTheme(MidOutline, "Accent")
            end;
        end);
        Library:Connection(ToggleHolder.MouseLeave, function()
            if not Toggle.Toggled then
                Library:ChangeObjectTheme(MidOutline, "Border2")
            end;
        end);

        -- // Misc Functions
        local function set(bool)
            bool = type(bool) == "boolean" and bool or false
            if Toggle.Toggled ~= bool then
                SetState()
            end;
        end;
        set(Toggle.State);
        Flags[Toggle.Flag] = set;
        Library.Flags[Toggle.Flag] = Toggle.Toggled
        --
        function Toggle:Set(bool)
            set(bool)
        end;

        -- // Keybind
        function Toggle:Keybind(Properties)
            local Properties = Properties or {}
            local Keybind = {
                State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or nil),
                Mode = (Properties.mode or Properties.Mode or "Hold"),
                Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
                Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag()),
                Binding = nil
            }
            local Key
            local State = false 
        
            -- // Elements
            local Shit = Library:NewDrawing("Square", {
                Parent = ToggleHolder,
                Visible = true,
                Filled = true,
                Thickness = 0,
                Transparency = 0,
                Size = UDim2.new(1, -28, 1, 0),
                Position = UDim2.new(0,17,0,0),
                ZIndex = 53
            });
            local ValueTitle = Library:NewDrawing("Text", {
                Text = "[-]";
                Size = 9;
                Font = which_font;
                Theme = "Text";
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(1,-40, 0, 1);
                Parent = Shit;
                ZIndex = 54;
                Center = false;
            });
            local ValueTitleShadow = Library:NewDrawing("Text", {
                Text = "[-]";
                Size = 9;
                Font = which_font;
                Color = Color3.fromRGB();
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(1,-39, 0, 2);
                Parent = Shit;
                ZIndex = 53;
                Center = false;
            });
            ValueTitle.Position = UDim2.new(1,-ValueTitle.TextBounds.X,0,1)
            ValueTitleShadow.Position = UDim2.new(1,-ValueTitleShadow.TextBounds.X + 1,0,2)
            local KeybindThing = Library:NewDrawing("Square", {
                Parent = Shit,
                Visible = true,
                Filled = true,
                Thickness = 0,
                Transparency = 0,
                Size = UDim2.new(0, 30, 1, 0),
                Position = UDim2.new(1,-30,0,0),
                ZIndex = 54
            });
            --
            local mode_frame = Library:NewDrawing("Square",{
                Theme = "Dark Contrast",
                Size = UDim2.new(0,54,0,50),
                Position = UDim2.new(1,5,0,-10),
                Filled = true,
                Parent = ToggleHolder,
                Thickness = 1,
                ZIndex = 55,
                Visible = false
            })
        
            local InnerOutline = Library:NewOutline(mode_frame, "Border1", 55);
            local MidOutline = Library:NewOutline(InnerOutline, "Border2", 55);
            local OuterOutline = Library:NewOutline(MidOutline, "Border1", 55);
        
            local holdtext = Library:NewDrawing("Text", {
                Text = "Hold",
                Font = which_font,
                Size = 9,
                Theme = Keybind.Mode == "Hold" and "Accent" or "Text",
                Position = UDim2.new(0.5,0,0,2),
                ZIndex = 56,
                Parent = mode_frame,
                Outline = true,
                Center = true
            })
            
            local toggletext = Library:NewDrawing("Text", {
                Text = "Toggle",
                Font = which_font,
                Size = 9,
                Theme = Keybind.Mode == "Toggle" and "Accent" or "Text",
                Position = UDim2.new(0.5,0,0,18),
                ZIndex = 56,
                Parent = mode_frame,
                Outline = true,
                Center = true
            })
            local alwaystext = Library:NewDrawing("Text", {
                Text = "Always",
                Font = which_font,
                Size = 9,
                Theme = Keybind.Mode == "Always" and "Accent" or "Text",
                Position = UDim2.new(0.5,0,0,34),
                ZIndex = 56,
                Parent = mode_frame,
                Outline = true,
                Center = true
            })
        
            local holdbutton = Library:NewDrawing("Square",{
                Color = Color3.new(0,0,0),
                Size = UDim2.new(0,44,0,12),
                Position = UDim2.new(0,0,0,2),
                Filled = false,
                Parent = mode_frame,
                Thickness = 1,
                ZIndex = 56,
                Transparency = 0
            })
        
            local togglebutton = Library:NewDrawing("Square",{
                Color = Color3.new(0,0,0),
                Size = UDim2.new(0,44,0,12),
                Position = UDim2.new(0,0,0,20),
                Filled = false,
                Parent = mode_frame,
                Thickness = 1,
                ZIndex = 56,
                Transparency = 0
            })
            local alwaysbutton = Library:NewDrawing("Square",{
                Color = Color3.new(0,0,0),
                Size = UDim2.new(0,44,0,12),
                Position = UDim2.new(0,0,0,36),
                Filled = false,
                Parent = mode_frame,
                Thickness = 1,
                ZIndex = 56,
                Transparency = 0
            })
        
            -- // Functions
            Library:Connection(ToggleHolder.MouseEnter, function()
                if not Keybind.Binding then
                    Library:ChangeObjectTheme(ValueTitle, "Accent")
                end;
            end);
            Library:Connection(ToggleHolder.MouseLeave, function()
                if not Keybind.Binding then
                    Library:ChangeObjectTheme(ValueTitle, "Text")
                end;
            end);
        
            -- // Misc Functions
            local function set(newkey)
                -- Ensure newkey is always a string before processing
                local newkey_str = tostring(newkey)
            
                if string.find(newkey_str, "Enum") then
                    if c then
                        c:Disconnect()
                        if Keybind.Flag then
                            Library.Flags[Keybind.Flag] = false
                        end
                        Keybind.Callback(false)
                    end
            
                    if newkey_str:find("Enum.KeyCode.") then
                        newkey = Enum.KeyCode[newkey_str:gsub("Enum.KeyCode.", "")]
                    elseif newkey_str:find("Enum.UserInputType.") then
                        newkey = Enum.UserInputType[newkey_str:gsub("Enum.UserInputType.", "")]
                    end
            
                    if newkey == Enum.KeyCode.Backspace then
                        Key = nil
            
                        local text = "-"
                        local sizeX = Library:GetTextLength("["..text.."]", which_font, 13).X
            
                        ValueTitle.Text = "["..text.."]"
                        ValueTitleShadow.Text = "["..text.."]"
                        ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                        ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                        KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                        KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                        Library:ChangeObjectTheme(ValueTitle, "Text")
                    elseif newkey ~= nil then
                        Key = newkey
            
                        local text = (Library.Keys[newkey] or newkey_str:gsub("Enum.KeyCode.", ""))
                        local sizeX = Library:GetTextLength("["..text.."]", which_font, 13).X
            
                        ValueTitle.Text = "["..text.."]"
                        ValueTitleShadow.Text = "["..text.."]"
                        ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                        ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                        KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                        KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                        Library:ChangeObjectTheme(ValueTitle, "Text")
                    end
            
                    Library.Flags[Keybind.Flag .. "_KEY"] = newkey
                elseif table.find({"Always", "Toggle", "Hold"}, newkey_str) then
                    Library.Flags[Keybind.Flag .. "_KEY STATE"] = newkey_str
                    Keybind.Mode = newkey_str
                    if Keybind.Mode == "Always" then
                        State = true
                        if Keybind.Flag then
                            Library.Flags[Keybind.Flag] = State
                        end
                        Keybind.Callback(true)
                    end
                else
                    State = newkey
                    if Keybind.Flag then
                        Library.Flags[Keybind.Flag] = newkey
                    end
                    Keybind.Callback(newkey)
                end 
            end
            
            --
            set(Keybind.State) 
            KeybindThing.MouseButton1Click:Connect(function()
                if not Keybind.Binding then
                    local sizeX = Library:GetTextLength("[-]", which_font, 13).X
        
                    ValueTitle.Text = "[-]"
                    ValueTitleShadow.Text = "[-]"
                    ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                    ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                    KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                    KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                    Library:ChangeObjectTheme(ValueTitle, "Accent")
                    
                    Keybind.Binding = Library:Connection(game:GetService("UserInputService").InputBegan, function(input, gpe)
                        set(input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType)
                        Library:Disconnect(Keybind.Binding)
                        task.wait()
                        Keybind.Binding = nil
                    end)
                end
            end)
            --
            Library:Connection(game:GetService("UserInputService").InputBegan, function(inp)
                if (inp.KeyCode == Key or inp.UserInputType == Key) and not Keybind.Binding then
                    if Keybind.Mode == "Hold" then
                        if Keybind.Flag then
                            Library.Flags[Keybind.Flag] = true
                        end
                        c = Library:Connection(game:GetService("RunService").RenderStepped, function()
                            if Keybind.Callback then
                                Keybind.Callback(true)
                            end
                        end)
                    elseif Keybind.Mode == "Toggle" then
                        State = not State
                        if Keybind.Flag then
                            Library.Flags[Keybind.Flag] = State;
                        end
                        Keybind.Callback(State)
                    end
                end
            end)
            --
            Library:Connection(game:GetService("UserInputService").InputEnded, function(inp)
                if Keybind.Mode == "Hold" then
                    if Key ~= '' or Key ~= nil then
                        if inp.KeyCode == Key or inp.UserInputType == Key then
                            if c then
                                c:Disconnect()
                                if Keybind.Flag then
                                    Library.Flags[Keybind.Flag] = false;
                                end
                                if Keybind.Callback then
                                    Keybind.Callback(false)
                                end
                            end
                        end
                    end
                end
            end)
            --
            holdbutton.MouseButton1Click:Connect(function()
                set("Hold")
                Library:ChangeObjectTheme(holdtext, "Accent")
                Library:ChangeObjectTheme(toggletext, "Text")
                Library:ChangeObjectTheme(alwaystext, "Text")
                mode_frame.Visible = false
            end)
            togglebutton.MouseButton1Click:Connect(function()
                set("Toggle")
                Library:ChangeObjectTheme(holdtext, "Text")
                Library:ChangeObjectTheme(toggletext, "Accent")
                Library:ChangeObjectTheme(alwaystext, "Text")
                mode_frame.Visible = false
            end)
            alwaysbutton.MouseButton1Click:Connect(function()
                set("Always")
                Library:ChangeObjectTheme(holdtext, "Text")
                Library:ChangeObjectTheme(toggletext, "Text")
                Library:ChangeObjectTheme(alwaystext, "Accent")
                mode_frame.Visible = false
            end)
            KeybindThing.MouseButton2Up:Connect(function()
                mode_frame.Visible = true
            end)
            --
            Library.Flags[Keybind.Flag] = Keybind.State
            Library.Flags[Keybind.Flag .. "_KEY STATE"] = Keybind.Mode
            Flags[Keybind.Flag] = set
            Flags[Keybind.Flag .. "_KEY"] = set
            Flags[Keybind.Flag .. "_KEY STATE"] = set
            --
            function Keybind:Set(key)
                set(key)
            end
        
            -- // Returning
            return Keybind;
        end;

        -- // Colorpicker
        function Toggle:Colorpicker(Properties)
            local Properties = Properties or {}
            local Colorpicker = {
                State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or Color3.fromRGB(255,0,0)),
                Alpha = (Properties.alpha or Properties.Alpha or Properties.transparency or Properties.Transparency or 1),
                Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
                Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag()),
            }
            -- // Functions
            Toggle.Colorpickers = Toggle.Colorpickers + 1;
            local colorpickertypes = Library:NewPicker(Properties.Name:lower() or "Color",Colorpicker.State, Colorpicker.Alpha, ToggleHolder, Toggle.Colorpickers - 1, Colorpicker.Flag, Colorpicker.Callback, 2)

            function Colorpicker:Set(color)
                colorpickertypes:set(color, false, true)
            end
        
            -- // Returning
            return Colorpicker;
        end;

        -- // Returning
        Toggle.Section.Content[#Toggle.Section.Content + 1] = Toggle;
        Toggle.Section.ContentAxis += ToggleHolder.Size.Y.Offset;
        if not Toggle.Section.NoUpdate then
            Toggle.Section:Update(24);
        else
            Toggle.Section:Update();
        end
        return Toggle;
    end;
    --
    function Sections:Slider(Properties)
        local Properties = Properties or {}
        local Slider = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            Min = (Properties.min or Properties.Min or Properties.minimum or Properties.Minimum or 0),
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or 10),
            Max = (Properties.max or Properties.Max or Properties.maximum or Properties.Maximum or 100),
            Sub = (Properties.suffix or Properties.Suffix or Properties.ending or Properties.Ending or Properties.prefix or Properties.Prefix or Properties.measurement or Properties.Measurement or ""),
            Decimals = (Properties.decimals or Properties.Decimals or 1),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag())
        }
        Slider.Decimals = 1 / Slider.Decimals;
        local TextValue = ("[value]/"..Slider.Max..Slider.Sub);

        -- // Elements
        local SliderHolder = Library:NewDrawing("Square", {
            Parent = Slider.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, Properties.Name:lower() and 28 or 16),
            ZIndex = 53,
        });
        local SliderFrame = Library:NewDrawing("Square", {
            Parent = SliderHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,-28,0,6),
            Position = UDim2.new(0,17,0, Properties.Name:lower() and 18 or 6),
            ZIndex = 55,
            Theme = "Dark Contrast"
        });
        --
        local InnerOutline = Library:NewOutline(SliderFrame, "Border1");
        local MidOutline = Library:NewOutline(InnerOutline, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");
        --
        local SliderFill = Library:NewDrawing("Square", {
            Parent = SliderFrame,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(0,0,1,0),
            ZIndex = 55,
            Theme = "Accent"
        });
        --
        local SliderDrag = Library:NewDrawing("Square", {
            Parent = SliderHolder,
            Visible = true,
            Filled = false,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1,0,1,0),
            ZIndex = 58
        });
        --
        if Properties.Name:lower() then
            local Title = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Theme = "Text";
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 14, 0, 0);
                Parent = SliderHolder;
                ZIndex = 54;
            });
            local TitleShadow = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Color = Color3.fromRGB();
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 15, 0, 1);
                Parent = SliderHolder;
                ZIndex = 53;
            });
        end;
        --
        local ValueTitle = Library:NewDrawing("Text", {
            Text = TextValue;
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Center = true;
            Position = UDim2.new(0.5, 0, 0, -4);
            Parent = SliderFrame;
            ZIndex = 56;
        });
        local ValueTitleShadow = Library:NewDrawing("Text", {
            Text = TextValue;
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = true;
            Position = UDim2.new(0.5, 1, 0, -3);
            Parent = SliderFrame;
            ZIndex = 55;
        });

        -- // Functions
        local Sliding = false
        local function Set(value)
            value = math.clamp(Library:Round(value, Slider.Decimals), Slider.Min, Slider.Max)

            ValueTitle.Text = TextValue:gsub("%[value%]", string.format("%.14g", value))
            ValueTitleShadow.Text = TextValue:gsub("%[value%]", string.format("%.14g", value))

            local sizeX = ((value - Slider.Min) / (Slider.Max - Slider.Min))
            SliderFill.Size = UDim2.new(sizeX, 0, 1, 0)

            Library.Flags[Slider.Flag] = value
            Slider.Callback(value)
        end
        --
        Set(Slider.State)
        --
        local function Slide(input)
            local sizeX = (input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X
            local value = ((Slider.Max - Slider.Min) * sizeX) + Slider.Min
            Set(value)
        end
        --
        Library:Connection(SliderDrag.InputBegan, function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Sliding = true
                Slide(input)
            end
        end)
        Library:Connection(SliderDrag.InputEnded, function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Sliding = false
            end
        end)
        Library:Connection(SliderFill.InputBegan, function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Sliding = true
                Slide(input)
            end
        end)
        Library:Connection(SliderFill.InputEnded, function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Sliding = false
            end
        end)
        Library:Connection(game:GetService("UserInputService").InputChanged, function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                if Sliding then
                    Slide(input)
                end
            end
        end)
        --
        Library:Connection(SliderHolder.MouseEnter, function()
            Library:ChangeObjectTheme(MidOutline, "Accent")
        end);
        Library:Connection(SliderHolder.MouseLeave, function()
            Library:ChangeObjectTheme(MidOutline, "Border2")
        end);
        --
        function Slider:Set(Value)
            Set(Value);
        end;
        --
        Flags[Slider.Flag] = Set;

        -- // Returning
        Slider.Section.Content[#Slider.Section.Content + 1] = Slider;
        Slider.Section.ContentAxis += SliderHolder.Size.Y.Offset;
        if not Slider.Section.NoUpdate then
            Slider.Section:Update(24);
        else
            Slider.Section:Update();
        end
        return Slider;
    end;
    --
    function Sections:Dropdown(Properties)
        local Properties = Properties or {}
        local Dropdown = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            Open = false,
            Options = (Properties.options or Properties.Options or Properties.values or Properties.Values or {"1","2","3"}),
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or nil),
            Max = (Properties.max or Properties.Max or Properties.maximum or Properties.Maximum or nil),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag())
        }

        -- // Elements
        local DropdownHolder = Library:NewDrawing("Square", {
            Parent = Dropdown.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, Properties.Name:lower() and 30 or 18),
            ZIndex = 53,
        });
        local DropdownFrame = Library:NewDrawing("Square", {
            Parent = DropdownHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,-28,0,8),
            Position = UDim2.new(0,17,0, Properties.Name:lower() and 18 or 6),
            ZIndex = 56,
            Theme = "Dark Contrast"
        });
        --
        local InnerOutline = Library:NewOutline(DropdownFrame, "Border1");
        local MidOutline = Library:NewOutline(InnerOutline, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");
        --
        local DropdownIcon = Library:NewDrawing("Image", {
            Parent = DropdownFrame,
            Visible = true,
            Data = Library.Images["Arrow_Down"],
            Transparency = 1,
            Size = UDim2.new(0,7,0,5),
            Position = UDim2.new(1,-10,0.5,-2),
            ZIndex = 56,
        });
        --
        local DropdownContentFrame = Library:NewDrawing("Square", {
            Parent = DropdownFrame,
            Visible = false,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,0,0,10),
            Position = UDim2.new(100,0,1,6),
            ZIndex = 58,
            Theme = "Dark Contrast"
        });
        --
        local ContentInnerOutline = Library:NewOutline(DropdownContentFrame, "Border1",58);
        local ContentMidOutline = Library:NewOutline(ContentInnerOutline, "Border2",58);
        local ContentOuterOutline = Library:NewOutline(ContentMidOutline, "Border1",58);
        --
        local DropdownContentHolder = Library:NewDrawing("Square", {
            Transparency = 0,
            Size = UDim2.new(1, -6, 1, -6),
            Position = UDim2.new(0, 3, 0, 3),
            Parent = DropdownContentFrame
        })
        DropdownContentHolder:AddListLayout(3)
        --
        local DropdownDrag = Library:NewDrawing("Square", {
            Parent = DropdownFrame,
            Visible = true,
            Filled = false,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1,0,1,0),
            ZIndex = 56
        });
        --
        if Properties.Name:lower() then
            local Title = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Theme = "Text";
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 14, 0, 0);
                Parent = DropdownHolder;
                ZIndex = 54;
            });
            local TitleShadow = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Color = Color3.fromRGB();
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 15, 0, 1);
                Parent = DropdownHolder;
                ZIndex = 53;
            });
        end;
        --
        local ValueTitle = Library:NewDrawing("Text", {
            Text = "";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Center = false;
            Position = UDim2.new(0, 2, 0, -3);
            Parent = DropdownFrame;
            ZIndex = 57;
        });
        local ValueTitleShadow = Library:NewDrawing("Text", {
            Text = "";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = false;
            Position = UDim2.new(0, 3, 0, -2);
            Parent = DropdownFrame;
            ZIndex = 56;
        });

        -- // Functions
        local Opened = false

        function Dropdown:ChangeOpened(state)
            if self.Window.OpenDropdown and self.Window.OpenDropdown ~= Dropdown then
                print(self.Window.OpenDropdown)
                self.Window.OpenDropdown:ChangeOpened(false);
            end;

            DropdownContentFrame.Visible = state;
            DropdownIcon.Data = (state and Library.Images["Arrow_Up"] or Library.Images["Arrow_Down"]);
            DropdownIcon.Position = (state and UDim2.new(1,-10,0.5,-3) or UDim2.new(1,-10,0.5,-2));
            DropdownContentFrame.Position = (state and UDim2.new(0,0,1,6) or UDim2.new(100,0,1,6));

            self.Window.OpenDropdown = state and Dropdown or nil;

            Opened = state;
        end;


        Library:Connection(DropdownHolder.MouseButton1Click, function()
            Opened = not Opened;
            Dropdown:ChangeOpened(Opened);
        end);

        local optioninstances = {}
        local count = 0
        local countindex = {}
        local startindex = 0

        local chosen = max and {}

        local function handleoptionclick(option, button, text)

                button.MouseButton1Click:Connect(function()
                    for opt, tbl in next, optioninstances do
                        if opt ~= option then
                            Library:ChangeObjectTheme(tbl.text, "Text")
                        end
                    end
                    chosen = option
                    ValueTitle.Text = option
                    ValueTitleShadow.Text = option
                    Library:ChangeObjectTheme(text, "Accent")
                    Library.Flags[Dropdown.Flag] = option
                    Dropdown.Callback(option)
                end)
        end

        local function createoptions(tbl)
            for _, option in next, tbl do
                optioninstances[option] = {}

                countindex[option] = count + 1

                local button = Library:NewDrawing("Square", {
                    Filled = true,
                    Transparency = 0,
                    Thickness = 1,
                    Size = UDim2.new(1, 0, 0, 16),
                    ZIndex = 58,
                    Parent = DropdownContentHolder,
                })
        
                optioninstances[option].button = button
        
                local title = Library:NewDrawing("Text", {
                    Text = option,
                    Font = which_font,
                    Size = 9,
                    Position = UDim2.new(0, 2, 0, 1),
                    Theme = "Text",
                    ZIndex = 59,
                    Outline = true,
                    Parent = button
                })
        
                optioninstances[option].text = title
        
                if Dropdown.Max then
                    if count < Dropdown.Max then
                        DropdownContentFrame.Size = UDim2.new(1, 0, 0, DropdownContentHolder.AbsoluteContentSize + 6)
                    end
                else
                    DropdownContentFrame.Size = UDim2.new(1, 0, 0, DropdownContentHolder.AbsoluteContentSize + 6)
                end
        
                count = count + 1
                handleoptionclick(option, button, title)
            end
        end

        createoptions(Dropdown.Options)

        --// Scroll
        if Dropdown.Max then
            --
            DropdownContentHolder:MakeScrollable()
            local scroll_connect = nil;
            --
            local scrollbar_outline = Library:NewDrawing("Square", {Transparency = 1,Size = UDim2.new(0,4,1,0),Position = UDim2.new(1,-4,0,0),ZIndex = 60, Parent = DropdownContentFrame, Thickness = 1, Theme = "Border2", Filled = true});
            --
            local scrollbar = Library:NewDrawing("Square", {Transparency = 1,Size = UDim2.new(0,3,count == 0 and 1 or count/Dropdown.Max, 0),Position = UDim2.new(1,-3,0,0),ZIndex = 61, Parent = DropdownContentFrame, Thickness = 1, Theme = "Accent", Filled = true});
            --
            local function refreshscroll()
                local scale = (startindex) / (count > 0 and count or 1)
                scrollbar.Position = UDim2.new(1,-3, scale, 0)
                scrollbar.Size = UDim2.new(0, 3, math.clamp(count == 0 and 1 or 1 / (count / Dropdown.Max), 0, 1), 0)
            end
            --
            DropdownContentHolder.MouseEnter:Connect(function()
                scroll_connect = Library:Connection(game:GetService("UserInputService").InputChanged, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseWheel then
                        local down = input.Position.Z < 0 and true or false
                        if down then
                            local indexesleft = count - Dropdown.Max - startindex
                            if indexesleft >= 0 then
                                startindex = math.clamp(startindex + 1, 0, count - Dropdown.Max)
                                refreshscroll()
                            end
                        else
                            local indexesleft = count - Dropdown.Max + startindex
                            if indexesleft >= count - Dropdown.Max then
                                startindex = math.clamp(startindex - 1, 0, count - Dropdown.Max)
                                refreshscroll()
                            end
                        end
                    end
                end);
            end)
            --
            DropdownContentHolder.MouseLeave:Connect(function()
                if scroll_connect then
                    Library:Disconnect(scroll_connect)
                end
            end)
            refreshscroll()
        end;
        local set
        set = function(option)
            for opt, tbl in next, optioninstances do
                if opt ~= option then
                    Library:ChangeObjectTheme(tbl.text, "Text")
                end
            end
            if table.find(Dropdown.Options, option) then
                chosen = option
                ValueTitle.Text = option
                ValueTitleShadow.Text = option
                Library:ChangeObjectTheme(optioninstances[option].text, "Accent")
                Library.Flags[Dropdown.Flag] = chosen
                Dropdown.Callback(chosen)
            else
                chosen = nil
                ValueTitle.Text = ""
                ValueTitleShadow.Text = ""
                Library.Flags[Dropdown.Flag] = chosen
                Dropdown.Callback(chosen)
            end
        end
        Flags[Dropdown.Flag] = Dropdown
        set(Dropdown.State)
        function Dropdown:Set(option)
            set(option)
        end
        --
        function Dropdown:Refresh(tbl)
            content = table.clone(tbl)
            count = 0

            for _, opt in next, optioninstances do
                coroutine.wrap(function()
                    opt.button:Remove()
                end)()
            end

            table.clear(optioninstances)

            createoptions(tbl)

            if Dropdown.Max then
                DropdownContentHolder:RefreshScrolling()
                refreshscroll()
            end

            if max and chosen then
                table.clear(chosen)
            else
                chosen = nil
            end

            Library.Flags[Dropdown.Flag] = chosen
            Dropdown.Callback(chosen)
        end
        --
        Library:Connection(DropdownHolder.MouseEnter, function()
            Library:ChangeObjectTheme(MidOutline, "Accent")
        end);
        Library:Connection(DropdownHolder.MouseLeave, function()
            Library:ChangeObjectTheme(MidOutline, "Border2")
        end);
        -- // Returning
        Dropdown.Section.Content[#Dropdown.Section.Content + 1] = Dropdown;
        Dropdown.Section.ContentAxis += DropdownHolder.Size.Y.Offset;
        if not Dropdown.Section.NoUpdate then
            Dropdown.Section:Update(24);
        else
            Dropdown.Section:Update();
        end
        DropdownContentFrame.Visible = false
        return Dropdown;
    end;
    --
    function Sections:Multibox(Properties)
        local Properties = Properties or {}
        local Multibox = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            Open = false,
            Options = (Properties.options or Properties.Options or Properties.values or Properties.Values or {"1","2","3"}),
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or nil),
            Max = (Properties.max or Properties.Max or Properties.maximum or Properties.Maximum or #(Properties.options or Properties.Options or Properties.values or Properties.Values)),
            ScrollMax = (Properties.scrollmax or Properties.ScrollMax or Properties.scrollmaximum or Properties.ScrollMaximum or 5),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag())
        }

        -- // Elements
        local MultiboxHolder = Library:NewDrawing("Square", {
            Parent = Multibox.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, Properties.Name:lower() and 30 or 18),
            ZIndex = 53,
        });
        local MultiboxFrame = Library:NewDrawing("Square", {
            Parent = MultiboxHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,-28,0,8),
            Position = UDim2.new(0,17,0, Properties.Name:lower() and 18 or 6),
            ZIndex = 56,
            Theme = "Dark Contrast"
        });
        --
        local InnerOutline = Library:NewOutline(MultiboxFrame, "Border1");
        local MidOutline = Library:NewOutline(InnerOutline, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");
        --
        local MultiboxIcon = Library:NewDrawing("Image", {
            Parent = MultiboxFrame,
            Visible = true,
            Data = Library.Images["Arrow_Down"],
            Transparency = 1,
            Size = UDim2.new(0,7,0,5),
            Position = UDim2.new(1,-10,0.5,-2),
            ZIndex = 56,
        });
        table.insert(Icons, MultiboxIcon)
        --
        local MultiboxContentFrame = Library:NewDrawing("Square", {
            Parent = MultiboxFrame,
            Visible = false,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,0,0,10),
            Position = UDim2.new(100,0,1,6),
            ZIndex = 58,
            Theme = "Dark Contrast"
        });
        --
        local ContentInnerOutline = Library:NewOutline(MultiboxContentFrame, "Border1",58);
        local ContentMidOutline = Library:NewOutline(ContentInnerOutline, "Border2",58);
        local ContentOuterOutline = Library:NewOutline(ContentMidOutline, "Border1",58);
        --
        local MultiboxContentHolder = Library:NewDrawing("Square", {
            Transparency = 0,
            Size = UDim2.new(1, -6, 1, -6),
            Position = UDim2.new(0, 3, 0, 3),
            Parent = MultiboxContentFrame
        })
        MultiboxContentHolder:AddListLayout(3)
        --
        local MultiboxDrag = Library:NewDrawing("Square", {
            Parent = MultiboxFrame,
            Visible = true,
            Filled = false,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1,0,1,0),
            ZIndex = 56
        });
        --
        if Properties.Name:lower() then
            local Title = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Theme = "Text";
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 14, 0, 0);
                Parent = MultiboxHolder;
                ZIndex = 54;
            });
            local TitleShadow = Library:NewDrawing("Text", {
                Text = Properties.Name:lower() or "Title";
                Size = 9;
                Font = which_font;
                Color = Color3.fromRGB();
                OutlineColor = Color3.fromRGB();
                Outline = false;
                Position = UDim2.new(0, 15, 0, 1);
                Parent = MultiboxHolder;
                ZIndex = 53;
            });
        end;
        --
        local ValueTitle = Library:NewDrawing("Text", {
            Text = "";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Center = false;
            Position = UDim2.new(0, 2, 0, -3);
            Parent = MultiboxFrame;
            ZIndex = 57;
        });
        local ValueTitleShadow = Library:NewDrawing("Text", {
            Text = "";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = false;
            Position = UDim2.new(0, 3, 0, -2);
            Parent = MultiboxFrame;
            ZIndex = 56;
        });

        local Opened = false
        function Multibox:ChangeOpened(state)
            if self.Window.OpenDropdown and self.Window.OpenDropdown ~= Multibox then
                self.Window.OpenDropdown:ChangeOpened(false);
            end;

            MultiboxContentFrame.Visible = Opened;
            MultiboxIcon.Data = (state and Library.Images["Arrow_Up"] or Library.Images["Arrow_Down"]);
            MultiboxIcon.Position = (state and UDim2.new(1,-10,0.5,-3) or UDim2.new(1,-10,0.5,-2));
            MultiboxContentFrame.Position = (state and UDim2.new(0,0,1,6) or UDim2.new(100,0,1,6))

            self.Window.OpenDropdown = state and Multibox or nil;

            Opened = state;
        end;

        Library:Connection(MultiboxDrag.MouseButton1Click, function()
            Opened = not Opened;
            Multibox:ChangeOpened(Opened);
        end);

        local optioninstances = {}
        local count = 0
        local countindex = {}
        local startindex = 0

        local chosen = Multibox.Max and {}

        local function handleoptionclick(option, button, text)
                button.MouseButton1Click:Connect(function()
                    if Multibox.Max then
                        if table.find(chosen, option) then
                            table.remove(chosen, table.find(chosen, option))
        
                            local textchosen = {}
                            local cutobject = false
        
                            for _, opt in next, chosen do
                                table.insert(textchosen, opt)
        
                                if Library:GetTextLength(table.concat(textchosen, ", ") .. ", ...", which_font, 13).X > (MultiboxFrame.AbsoluteSize.X - 14) then
                                    cutobject = true
                                    table.remove(textchosen, #textchosen)
                                end
                            end
        
                            ValueTitle.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")
                            ValueTitleShadow.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")
        
                            Library:ChangeObjectTheme(text, "Text")
        
                            Library.Flags[Multibox.Flag] = chosen
                            Multibox.Callback(chosen)
                        else
                            if #chosen == Multibox.Max then
                                Library:ChangeObjectTheme(optioninstances[chosen[1]].text, "Text")
        
                                table.remove(chosen, 1)
                            end
        
                            table.insert(chosen, option)
        
                            local textchosen = {}
                            local cutobject = false
        
                            for _, opt in next, chosen do
                                table.insert(textchosen, opt)
        
                                if Library:GetTextLength(table.concat(textchosen, ", ") .. ", ...", which_font, 13).X > (MultiboxFrame.AbsoluteSize.X - 14) then
                                    cutobject = true
                                    table.remove(textchosen, #textchosen)
                                end
                            end
        
        
                            ValueTitle.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")
                            ValueTitleShadow.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")
        
                            Library:ChangeObjectTheme(text, "Accent")
        
                            Library.Flags[Multibox.Flag] = chosen
                            Multibox.Callback(chosen)
                        end
                    end
                end)

        end

        local function createoptions(tbl)
            for _, option in next, tbl do
                optioninstances[option] = {}

                countindex[option] = count + 1

                local button = Library:NewDrawing("Square", {
                    Filled = true,
                    Transparency = 0,
                    Thickness = 1,
                    Size = UDim2.new(1, 0, 0, 16),
                    ZIndex = 58,
                    Parent = MultiboxContentHolder
                })
        
                optioninstances[option].button = button
        
                local title = Library:NewDrawing("Text", {
                    Text = option,
                    Font = which_font,
                    Size = 9,
                    Position = UDim2.new(0, 2, 0, 1),
                    Theme = "Text",
                    ZIndex = 59,
                    Outline = true,
                    Parent = button
                })
        
                optioninstances[option].text = title
        
                if Multibox.ScrollMax then
                    if count < Multibox.ScrollMax then
                        MultiboxContentFrame.Size = UDim2.new(1, 0, 0, MultiboxContentHolder.AbsoluteContentSize + 6)
                    end
                else
                    MultiboxContentFrame.Size = UDim2.new(1, 0, 0, MultiboxContentHolder.AbsoluteContentSize + 6)
                end
        
                count = count + 1
                handleoptionclick(option, button, title)
            end
        end

        createoptions(Multibox.Options)

        --// Scroll
        if Multibox.ScrollMax then
            --
            MultiboxContentHolder:MakeScrollable()
            local scroll_connect = nil;
            --
            local scrollbar_outline = Library:NewDrawing("Square", {Transparency = 1,Size = UDim2.new(0,4,1,0),Position = UDim2.new(1,-4,0,0),ZIndex = 60, Parent = MultiboxContentFrame, Thickness = 1, Theme = "Border2", Filled = true});
            --
            local scrollbar = Library:NewDrawing("Square", {Transparency = 1,Size = UDim2.new(0,3,count == 0 and 1 or count/Multibox.ScrollMax, 0),Position = UDim2.new(1,-3,0,0),ZIndex = 61, Parent = MultiboxContentFrame, Thickness = 1, Theme = "Accent", Filled = true});
            --
            local function refreshscroll()
                local scale = (startindex) / (count > 0 and count or 1)
                scrollbar.Position = UDim2.new(1,-3, scale, 0)
                scrollbar.Size = UDim2.new(0, 3, math.clamp(count == 0 and 1 or 1 / (count / Multibox.ScrollMax), 0, 1), 0)
            end
            --
            MultiboxContentHolder.MouseEnter:Connect(function()
                scroll_connect = Library:Connection(game:GetService("UserInputService").InputChanged, function(input)
                    if input.UserInputType == Enum.UserInputType.MouseWheel then
                        local down = input.Position.Z < 0 and true or false
                        if down then
                            local indexesleft = count - Multibox.ScrollMax - startindex
                            if indexesleft >= 0 then
                                startindex = math.clamp(startindex + 1, 0, count - Multibox.ScrollMax)
                                refreshscroll()
                            end
                        else
                            local indexesleft = count - Multibox.ScrollMax + startindex
                            if indexesleft >= count - Multibox.ScrollMax then
                                startindex = math.clamp(startindex - 1, 0, count - Multibox.ScrollMax)
                                refreshscroll()
                            end
                        end
                    end
                end);
            end)
            --
            MultiboxContentHolder.MouseLeave:Connect(function()
                if scroll_connect then
                    Library:Disconnect(scroll_connect)
                end
            end)
            refreshscroll()
        end;
        local set
        set = function(d, option)
            if Multibox.Max then
                table.clear(chosen)
                option = type(option) == "table" and option or {}
                chosen = type(option) == "table" and option or {}


                for opt, tbl in next, optioninstances do
                    if not table.find(option, opt) then
                        --tbl.button.Transparency = 0
                        Library:ChangeObjectTheme(tbl.text, "Text")
                    end
                end

                for i, opt in next, option do
                    if table.find(Multibox.Options, opt) and #chosen < Multibox.Max then
                        table.insert(chosen, opt)
                        Library:ChangeObjectTheme(optioninstances[opt].text, "Accent")
                    end
                end

                local textchosen = {}
                local cutobject = false

                for _, opt in next, chosen do
                    table.insert(textchosen, opt)

                    if Library:GetTextLength(table.concat(textchosen, ", ") .. ", ...", which_font, 13).X > (MultiboxFrame.AbsoluteSize.X - 14) then
                        cutobject = true
                        table.remove(textchosen, #textchosen)
                    end
                end

                ValueTitle.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")
                ValueTitleShadow.Text = #chosen == 0 and "" or table.concat(textchosen, ", ") .. (cutobject and ", ..." or "")

                Library.Flags[Multibox.Flag] = chosen
                Multibox.Callback(chosen)
            end
        end
        Flags[Multibox.Flag] = set
        set(Multibox.State)
        --
        function Multibox:Set(option)
            set(option)
        end
        --
        function Multibox:Refresh(tbl)
            content = table.clone(tbl)
            count = 0

            for _, opt in next, optioninstances do
                coroutine.wrap(function()
                    opt.button:Remove()
                end)()
            end

            table.clear(optioninstances)

            createoptions(tbl)

            if Multibox.ScrollMax then
                MultiboxContentHolder:RefreshScrolling()
                refreshscroll()
            end

            if Multibox.Max then
                table.clear(chosen)
            else
                chosen = nil
            end

            Library.Flags[Multibox.Flag] = chosen
            Multibox.Callback(chosen)
        end
        --
        Library:Connection(MultiboxHolder.MouseEnter, function()
            Library:ChangeObjectTheme(MidOutline, "Accent")
        end);
        Library:Connection(MultiboxHolder.MouseLeave, function()
            Library:ChangeObjectTheme(MidOutline, "Border2")
        end);
        -- // Returning
        Multibox.Section.Content[#Multibox.Section.Content + 1] = Multibox;
        Multibox.Section.ContentAxis += MultiboxHolder.Size.Y.Offset;
        if not Multibox.Section.NoUpdate then
            Multibox.Section:Update(24);
        else
            Multibox.Section:Update();
        end
        MultiboxContentFrame.Visible = false
        return Multibox;
    end;
    --
    function Sections:Keybind(Properties)
        local Properties = Properties or {}
        local Keybind = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or nil),
            Mode = (Properties.mode or Properties.Mode or "Hold"),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag()),
            Binding = nil;
            State = false;
            Key = "";
        }
        local Key

        -- // Elements
        local KeybindHolder = Library:NewDrawing("Square", {
            Parent = Keybind.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, 16),
            ZIndex = 53,
        });
        --
        local Shit = Library:NewDrawing("Square", {
            Parent = KeybindHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, -28, 1, 0),
            Position = UDim2.new(0,17,0,0),
            ZIndex = 53
        });
        --
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 14, 0, 1);
            Parent = KeybindHolder;
            ZIndex = 54;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 15, 0, 2);
            Parent = KeybindHolder;
            ZIndex = 53;
        });
        local ValueTitle = Library:NewDrawing("Text", {
            Text = "[-]";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(1,-40, 0, 1);
            Parent = Shit;
            ZIndex = 54;
            Center = false;
        });
        local ValueTitleShadow = Library:NewDrawing("Text", {
            Text = "[-]";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(1,-39, 0, 2);
            Parent = Shit;
            ZIndex = 53;
            Center = false;
        });
        ValueTitle.Position = UDim2.new(1,-ValueTitle.TextBounds.X,0,1)
        ValueTitleShadow.Position = UDim2.new(1,-ValueTitleShadow.TextBounds.X + 1,0,2)
        local KeybindThing = Library:NewDrawing("Square", {
            Parent = KeybindHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 54,
        });
        --
        local mode_frame = Library:NewDrawing("Square",{
            Theme = "Dark Contrast",
            Size = UDim2.new(0,54,0,50),
            Position = UDim2.new(1,5,0,-10),
            Filled = true,
            Parent = KeybindHolder,
            Thickness = 1,
            ZIndex = 55,
            Visible = false
        })

        local InnerOutline = Library:NewOutline(mode_frame, "Border1", 55);
        local MidOutline = Library:NewOutline(InnerOutline, "Border2", 55);
        local OuterOutline = Library:NewOutline(MidOutline, "Border1", 55);

        local holdtext = Library:NewDrawing("Text", {
            Text = "Hold",
            Font = which_font,
            Size = 9,
            Theme = Keybind.Mode == "Hold" and "Accent" or "Text",
            Position = UDim2.new(0.5,0,0,2),
            ZIndex = 56,
            Parent = mode_frame,
            Outline = true,
            Center = true
        })
        
        local toggletext = Library:NewDrawing("Text", {
            Text = "Toggle",
            Font = which_font,
            Size = 9,
            Theme = Keybind.Mode == "Toggle" and "Accent" or "Text",
            Position = UDim2.new(0.5,0,0,18),
            ZIndex = 56,
            Parent = mode_frame,
            Outline = true,
            Center = true
        })
        local alwaystext = Library:NewDrawing("Text", {
            Text = "Always",
            Font = which_font,
            Size = 9,
            Theme = Keybind.Mode == "Always" and "Accent" or "Text",
            Position = UDim2.new(0.5,0,0,34),
            ZIndex = 56,
            Parent = mode_frame,
            Outline = true,
            Center = true
        })

        local holdbutton = Library:NewDrawing("Square",{
            Color = Color3.new(0,0,0),
            Size = UDim2.new(0,44,0,12),
            Position = UDim2.new(0,0,0,2),
            Filled = false,
            Parent = mode_frame,
            Thickness = 1,
            ZIndex = 56,
            Transparency = 0
        })

        local togglebutton = Library:NewDrawing("Square",{
            Color = Color3.new(0,0,0),
            Size = UDim2.new(0,44,0,12),
            Position = UDim2.new(0,0,0,20),
            Filled = false,
            Parent = mode_frame,
            Thickness = 1,
            ZIndex = 56,
            Transparency = 0
        })
        local alwaysbutton = Library:NewDrawing("Square",{
            Color = Color3.new(0,0,0),
            Size = UDim2.new(0,44,0,12),
            Position = UDim2.new(0,0,0,36),
            Filled = false,
            Parent = mode_frame,
            Thickness = 1,
            ZIndex = 56,
            Transparency = 0
        })

        -- // Functions
        Library:Connection(KeybindHolder.MouseEnter, function()
            if not Keybind.Binding then
                Library:ChangeObjectTheme(ValueTitle, "Accent")
            end;
        end);
        Library:Connection(KeybindHolder.MouseLeave, function()
            if not Keybind.Binding then
                Library:ChangeObjectTheme(ValueTitle, "Text")
            end;
        end);

        -- // Misc Functions
        local function set(newkey)
            if string.find(tostring(newkey), "Enum") then
                if c then
                    c:Disconnect()
                    if Keybind.Flag then
                        Library.Flags[Keybind.Flag] = false
                    end
                    Keybind.Callback(false)
                end
                if tostring(newkey):find("Enum.KeyCode.") then
                    newkey = Enum.KeyCode[tostring(newkey):gsub("Enum.KeyCode.", "")]
                elseif tostring(newkey):find("Enum.UserInputType.") then
                    newkey = Enum.UserInputType[tostring(newkey):gsub("Enum.UserInputType.", "")]
                end
                if newkey == Enum.KeyCode.Backspace then
                    Key = nil
        
                    local text = "-"
                    local sizeX = Library:GetTextLength("["..text.."]", which_font, 13).X
    
                    ValueTitle.Text = "["..text.."]"
                    ValueTitleShadow.Text = "["..text.."]"
                    ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                    ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                    KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                    KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                    Library:ChangeObjectTheme(ValueTitle, "Text")
                elseif newkey ~= nil then
                    Key = newkey
        
                    local text = (Library.Keys[newkey] or tostring(newkey):gsub("Enum.KeyCode.", ""))
                    local sizeX = Library:GetTextLength("["..text.."]", which_font, 13).X
    
                    ValueTitle.Text = "["..text.."]"
                    ValueTitleShadow.Text = "["..text.."]"
                    ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                    ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                    KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                    KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                    Library:ChangeObjectTheme(ValueTitle, "Text")
                end
    
                Library.Flags[Keybind.Flag .. "_KEY"] = newkey
            elseif table.find({"Always", "Toggle", "Hold"}, newkey) then
                Library.Flags[Keybind.Flag .. "_KEY STATE"] = newkey
                Keybind.Mode = newkey
                if Keybind.Mode == "Always" then
                    State = true
                    if Keybind.Flag then
                        Library.Flags[Keybind.Flag] = State
                    end
                    Keybind.Callback(true)
                end
            else 
                State = newkey
                if Keybind.Flag then
                    Library.Flags[Keybind.Flag] = newkey
                end
                Keybind.Callback(newkey)
            end 
        end
        --
        set(Keybind.State) 
        KeybindThing.MouseButton1Click:Connect(function()
            if not Keybind.Binding then
                local sizeX = Library:GetTextLength("[-]", which_font, 13).X
    
                ValueTitle.Text = "[-]"
                ValueTitleShadow.Text = "[-]"
                ValueTitle.Position = UDim2.new(1,-sizeX,0,1)
                ValueTitleShadow.Position = UDim2.new(1,-sizeX + 1,0,2)
                KeybindThing.Size = UDim2.new(0,sizeX + 5, 1,0)
                KeybindThing.Position = UDim2.new(1,-sizeX - 5,0,0)
                Library:ChangeObjectTheme(ValueTitle, "Accent")
                
                Keybind.Binding = Library:Connection(game:GetService("UserInputService").InputBegan, function(input, gpe)
                    set(input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType)
                    Library:Disconnect(Keybind.Binding)
                    task.wait()
                    Keybind.Binding = nil
                end)
            end
        end)
        --
        Library:Connection(game:GetService("UserInputService").InputBegan, function(inp)
            if (inp.KeyCode == Key or inp.UserInputType == Key) and not Keybind.Binding then
                if Keybind.Mode == "Hold" then
                    if Keybind.Flag then
                        Library.Flags[Keybind.Flag] = true
                    end
                    c = Library:Connection(game:GetService("RunService").RenderStepped, function()
                        if Keybind.Callback then
                            Keybind.Callback(true)
                        end
                    end)
                elseif Keybind.Mode == "Toggle" then
                    State = not State
                    if Keybind.Flag then
                        Library.Flags[Keybind.Flag] = State;
                    end
                    Keybind.Callback(State)
                end
            end
        end)
        --
        Library:Connection(game:GetService("UserInputService").InputEnded, function(inp)
            if Keybind.Mode == "Hold" then
                if Key ~= '' or Key ~= nil then
                    if inp.KeyCode == Key or inp.UserInputType == Key then
                        if c then
                            c:Disconnect()
                            if Keybind.Flag then
                                Library.Flags[Keybind.Flag] = false;
                            end
                            if Keybind.Callback then
                                Keybind.Callback(false)
                            end
                        end
                    end
                end
            end
        end)
        --
        holdbutton.MouseButton1Click:Connect(function()
            set("Hold")
            Library:ChangeObjectTheme(holdtext, "Accent")
            Library:ChangeObjectTheme(toggletext, "Text")
            Library:ChangeObjectTheme(alwaystext, "Text")
            mode_frame.Visible = false
        end)
        togglebutton.MouseButton1Click:Connect(function()
            set("Toggle")
            Library:ChangeObjectTheme(holdtext, "Text")
            Library:ChangeObjectTheme(toggletext, "Accent")
            Library:ChangeObjectTheme(alwaystext, "Text")
            mode_frame.Visible = false
        end)
        alwaysbutton.MouseButton1Click:Connect(function()
            set("Always")
            Library:ChangeObjectTheme(holdtext, "Text")
            Library:ChangeObjectTheme(toggletext, "Text")
            Library:ChangeObjectTheme(alwaystext, "Accent")
            mode_frame.Visible = false
        end)
        KeybindThing.MouseButton2Up:Connect(function()
            mode_frame.Visible = true
        end)
        --
        Library.Flags[Keybind.Flag .. "_KEY"] = Keybind.State
        Library.Flags[Keybind.Flag .. "_KEY STATE"] = Keybind.Mode
        Flags[Keybind.Flag] = set
        Flags[Keybind.Flag .. "_KEY"] = set
        Flags[Keybind.Flag .. "_KEY STATE"] = set
        --
        function Keybind:Set(key)
            set(key)
        end
        -- // Returning
        Keybind.Section.Content[#Keybind.Section.Content + 1] = Keybind;
        Keybind.Section.ContentAxis += KeybindHolder.Size.Y.Offset;
        if not Keybind.Section.NoUpdate then
            Keybind.Section:Update(24);
        else
            Keybind.Section:Update();
        end
        return Keybind;
    end;
    --
    function Sections:Colorpicker(Properties)
        local Properties = Properties or {}
        local Colorpicker = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or Color3.fromRGB(255,0,0)),
            Alpha = (Properties.alpha or Properties.Alpha or Properties.transparency or Properties.Transparency or 1),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag()),
            Colorpickers = 0
        }

        -- // Elements
        local ColorpickerHolder = Library:NewDrawing("Square", {
            Parent = Colorpicker.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, 16),
            ZIndex = 53,
        });
        --
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 14, 0, 1);
            Parent = ColorpickerHolder;
            ZIndex = 54;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0, 15, 0, 2);
            Parent = ColorpickerHolder;
            ZIndex = 53;
        });
        -- // Functions
        local colorpickertypes = Library:NewPicker(Title.Text,Colorpicker.State, Colorpicker.Alpha, ColorpickerHolder, Colorpicker.Colorpickers, Colorpicker.Flag, Colorpicker.Callback, 2)
        function colorpickertypes:new_colorpicker(cfg)
            Colorpicker.Colorpickers = Colorpicker.Colorpickers + 1
            local cp_tbl = {}
            local default = cfg.state or cfg.State or cfg.def or cfg.Def or cfg.default or cfg.Default or Color3.fromRGB(255,0,0);
            local flag = cfg.flag or cfg.Flag or utility.nextflag();
            local callback = cfg.callback or function() end;
            local defaultalpha = cfg.alpha or cfg.Alpha or 1

            local cp = Library:NewPicker(Title.Text,default, defaultalpha, ColorpickerHolder, Colorpicker.Colorpickers, flag, callback, 2)
            function cp_tbl:Set(color)
                cp:set(color, false, true)
            end
            return cp_tbl
        end

        function Colorpicker:Set(color)
            colorpickertypes:set(color, false, true)
        end

        -- // Returning
        Colorpicker.Section.Content[#Colorpicker.Section.Content + 1] = Colorpicker;
        Colorpicker.Section.ContentAxis += ColorpickerHolder.Size.Y.Offset;
        if not Colorpicker.Section.NoUpdate then
            Colorpicker.Section:Update(30);
        else
            Colorpicker.Section:Update();
        end
        return Colorpicker, colorpickertypes;
    end;
    --
    function Sections:Button(Properties)
        local Properties = Properties or {}
        local Button = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
        };

        -- // Elements
        local ButtonHolder = Library:NewDrawing("Square", {
            Parent = Button.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, 28),
            ZIndex = 53,
        });
        local ButtonFrame = Library:NewDrawing("Square", {
            Parent = ButtonHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,-28,0,17),
            Position = UDim2.new(0,17,0, 6),
            ZIndex = 56,
            Theme = "Dark Contrast"
        });
        local Title = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = true;
            Position = UDim2.new(0.5, 0, 0, 1);
            Parent = ButtonFrame;
            ZIndex = 57;
        });
        local TitleShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Center = true;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0.5, 1, 0, 1);
            Parent = ButtonFrame;
            ZIndex = 56;
        });
        local InnerOutline = Library:NewOutline(ButtonFrame, "Border1");
        local MidOutline = Library:NewOutline(ButtonFrame, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");

        -- // Callback
        Library:Connection(ButtonFrame.MouseButton1Click, function()
            Button.Callback();
        end);

        -- // Highlight
        Library:Connection(ButtonHolder.MouseEnter, function()
            Library:ChangeObjectTheme(MidOutline, "Accent")
        end);
        Library:Connection(ButtonHolder.MouseLeave, function()
            Library:ChangeObjectTheme(MidOutline, "Border2")
        end);

        -- // Returns
        Button.Section.Content[#Button.Section.Content + 1] = Button;
        Button.Section.ContentAxis += ButtonHolder.Size.Y.Offset;
        if not Button.Section.NoUpdate then
            Button.Section:Update(24);
        else
            Button.Section:Update();
        end;
        return Button;
    end;
    --
    function Sections:Textbox(Properties)
        local Properties = Properties or {}
        local Textbox = {
            Window = self.Window,
            Page = self.Page,
            Section = self,
            State = (Properties.state or Properties.State or Properties.def or Properties.Def or Properties.default or Properties.Default or ""),
            Callback = (Properties.callback or Properties.Callback or Properties.callBack or Properties.CallBack or function() end),
            Flag = (Properties.flag or Properties.Flag or Properties.pointer or Properties.Pointer or Library:Flag())
        };

        -- // Elements
        local TextboxHolder = Library:NewDrawing("Square", {
            Parent = Textbox.Section.Elements.SectionContent,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 0,
            Size = UDim2.new(1, 0, 0, 28),
            ZIndex = 53,
        });
        local TextboxFrame = Library:NewDrawing("Square", {
            Parent = TextboxHolder,
            Visible = true,
            Filled = true,
            Thickness = 0,
            Transparency = 1,
            Size = UDim2.new(1,-28,0,17),
            Position = UDim2.new(0,17,0, 6),
            ZIndex = 55,
            Theme = "Dark Contrast"
        });

        -- // Text
        local Text = Library:NewDrawing("Text", {
            Text = Textbox.State;
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = true;
            Position = UDim2.new(0.5, 0, 0, 1);
            Parent = TextboxFrame;
            ZIndex = 57;
        });
        local TextShadow = Library:NewDrawing("Text", {
            Text = Textbox.State;
            Size = 9;
            Font = which_font;
            Center = true;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0.5, 1, 0, 1);
            Parent = TextboxFrame;
            ZIndex = 56;
            Transparency = 0;
        });


        -- // Placeholder
        local Placeholder = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Theme = "Text";
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Center = true;
            Position = UDim2.new(0.5, 0, 0, 1);
            Parent = TextboxFrame;
            ZIndex = 57;
            Transparency = 0.5;
        });
        local PlaceholderShadow = Library:NewDrawing("Text", {
            Text = Properties.Name:lower() or "Title";
            Size = 9;
            Font = which_font;
            Center = true;
            Color = Color3.fromRGB();
            OutlineColor = Color3.fromRGB();
            Outline = false;
            Position = UDim2.new(0.5, 1, 0, 1);
            Parent = TextboxFrame;
            ZIndex = 56;
            Transparency = 0.5;
        });

        -- // Input
        Library:NewBox(TextboxFrame, Text, TextShadow,  function(str) 
            if str == "" then
                Placeholder.Visible = true
                PlaceholderShadow.Visible = true
                Text.Visible = false
                TextShadow.Visible = false
            else
                Placeholder.Visible = false
                PlaceholderShadow.Visible = false
                Text.Visible = true
                TextShadow.Visible = true
            end
        end, function(str)
            Library.Flags[Textbox.Flag] = str
            Textbox.Callback(str)
        end)

        local function set(str)
            Text.Visible = str ~= ""
            Placeholder.Visible = str == "";
            Text.Text = str
            Library.Flags[Textbox.Flag] = str
            Textbox.Callback(str)
        end

        Flags[Textbox.Flag] = set

        local InnerOutline = Library:NewOutline(TextboxFrame, "Border1");
        local MidOutline = Library:NewOutline(TextboxFrame, "Border2");
        local OuterOutline = Library:NewOutline(MidOutline, "Border1");

        -- // Highlight
        Library:Connection(TextboxHolder.MouseEnter, function()
            Library:ChangeObjectTheme(MidOutline, "Accent")
        end);
        Library:Connection(TextboxHolder.MouseLeave, function()
            Library:ChangeObjectTheme(MidOutline, "Border2")
        end);

        if not Textbox.Section.NoUpdate then
            Textbox.Section:Update(24);
        else
            Textbox.Section:Update();
        end;
        return Textbox
    end;
end;

--// constants
local ACCENT = Color3.fromRGB(93, 62, 152);

--// define the flags
local flags = Library.Flags;

--// fake drawing
local fake_drawing = loadstring(game:HttpGet("https://rentry.co/x9puks9q/raw"))(); 

--// services
local players = game:GetService("Players");
local user_input_service = game:GetService("UserInputService");
local tween_service = game:GetService("TweenService");
local workspace = game:GetService("Workspace");
local run_service = game:GetService("RunService");

--// vars
local fake_third_person_object;

local hit_sounds = {
    LazerBeam = "rbxassetid://130791043",
    WindowsXPError = "rbxassetid://160715357",
    TF2Hitsound = "rbxassetid://3455144981",
    TF2Critical = "rbxassetid://296102734",
    TF2Bat = "rbxassetid://3333907347",
    BowHit = "rbxassetid://1053296915",
    Bow = "rbxassetid://3442683707",
    OSU = "rbxassetid://7147454322",
    Steve = "rbxassetid://5869422451",
    Rust = "rbxassetid://6565371338",
    Mario = "rbxassetid://5709456554",
    Bameware = "rbxassetid://3124331820",
    Bell = "rbxassetid://6534947240",
    Bubble = "rbxassetid://6534947588",
    Skeet = "rbxassetid://5633695679",
    Neverlose = "rbxassetid://6534948092",
    Fatality = "rbxassetid://6534947869",
    Bonk = "rbxassetid://5766898159",
    Minecraft = "rbxassetid://4018616850",
    OneNN = "rbxassetid://7349055654"
};

--// instances
local local_player = players.LocalPlayer;
local camera = workspace.CurrentCamera;

--// ignored folder, for raycasting
local ignored_folder = Instance.new("Folder");
ignored_folder.Parent = workspace;

--// cache the shared table, useful
local shared;

local nil_instances = getnilinstances();

for i = 1, #nil_instances do
    local nil_instance = nil_instances[i];

    if nil_instance.Name == "ClientLoader" then
        shared = getsenv(nil_instance).shared;
    end;
end;

--// game modules
local replication_interface = shared.require("ReplicationInterface");
local camera_interface = shared.require("CameraInterface");
local character_interface = shared.require("CharacterInterface");
local weapon_controller_interface = shared.require("WeaponControllerInterface");
local weapon_controller_object = shared.require("WeaponControllerObject");
local firearm_object = shared.require("FirearmObject");	
local third_person_object = shared.require("ThirdPersonObject");
local vector_lib = shared.require("VectorLib");
local game_clock = shared.require("GameClock");
local character_object = shared.require("CharacterObject");
local replication_object = shared.require("ReplicationObject");
local network_client = shared.require("NetworkClient");
local active_loadout_utils = shared.require("ActiveLoadoutUtils");
local player_data_client_interface = shared.require("PlayerDataClientInterface");
local modify_data = shared.require("ModifyData");
local content_database = shared.require("ContentDatabase");
local main_camera_object = shared.require("MainCameraObject");
local melee_object = shared.require("MeleeObject");
local grenade_object = shared.require("GrenadeObject");
local sway = shared.require("Sway");
local bullet_check = shared.require("BulletCheck");
local public_settings = shared.require("PublicSettings");

--// get the entries table itself instead of calling getEntry
local entries = debug.getupvalue(replication_interface.addEntry, 1);

--// other vars
local last_choke_tick = game_clock.getTime();

local weapons_t = {}; do
    weapons_t.get_current_controller = function()
        return weapon_controller_interface.getActiveWeaponController();
    end;

    weapons_t.shoot_active_weapon = function(self)
        local current_controller = self.get_current_controller();

        if current_controller then
            local active_weapon = current_controller:getActiveWeapon();
            
            if active_weapon:getWeaponType() == "Firearm" then
                active_weapon:shoot(true);
                task.wait();
                active_weapon:shoot(false);
            end;
        end;

        return nil;
    end;

    weapons_t.get_active_weapon = function(self)
        local current_controller = self.get_current_controller();

        if current_controller then
            return current_controller:getActiveWeapon();
        end;

        return nil;
    end;
end;

--// utility class
local utility_t = {}; do
    utility_t.move_mouse = function(position, smoothing_x, smoothing_y, humanizer_enabled, humanizer_value)
        local mouse_position = user_input_service:GetMouseLocation();
        
        local delta_x = (position.X - mouse_position.X);
        local delta_y = (position.Y - mouse_position.Y);
        
        if humanizer_enabled then --// rewrite needed
            local time = tick();

            local humanizer_curve_x = math.sin(time * humanizer_value) * (math.abs(delta_x) / smoothing_x);
            local humanizer_curve_y = math.sin(time * humanizer_value) * (math.abs(delta_y) / smoothing_y);

            delta_x = delta_x + humanizer_curve_x;
            delta_y = delta_y + humanizer_curve_y;
        end;
    
        mousemoverel(delta_x / smoothing_x, delta_y / smoothing_y);
    end;    
    
    utility_t.connect = function(signal, connection_func)
        return signal:Connect(connection_func);
    end;

    utility_t.draw = function(drawing_type, properties)
        local drawing_instance = Drawing.new(drawing_type);

        for property, value in properties do
            drawing_instance[property] = value;
        end;

        return drawing_instance;
    end;

    utility_t.fake_draw = function(drawing_type, properties)
        local drawing_instance = fake_drawing.new(drawing_type);

        for property, value in properties do
            drawing_instance[property] = value;
        end;

        return drawing_instance;
    end;

    utility_t.get_distance = function(v1, v2)
        return (v1 - v2).Magnitude;
    end;

    utility_t.is_alive = function(player)
        return player.Character and player.Character:FindFirstChild("HumanoidRootPart") and true or false;
    end;

    utility_t.get_center = function()
        local viewport = camera.ViewportSize;

        return Vector2.new(viewport.X / 2, viewport.Y / 2);
    end;
    
    utility_t.is_valid_raycast = function(instance)
        if not instance.CanCollide or instance.Transparency == 1 then
            return true;
        end;

        return false;
    end;

    utility_t.can_hit = function(start_position, end_position, velocity, acceleration, target_position, penetration_depth)
        return not bullet_check(start_position, end_position, velocity, acceleration, penetration_depth, 0.016666666666666666);
    end;
    
    utility_t.is_position_visible = function(position, character, wallcheck_type)
        local local_player_character = character_interface.isAlive() and character_interface:getCharacterObject()._characterModel or nil;
        local current_weapon = weapons_t:get_active_weapon();

        if wallcheck_type == "Raycast" then
            local hrp = character_interface.isAlive() and character_interface:getCharacterObject():getRealRootPart() or nil;

            if hrp then
                local amount = camera:GetPartsObscuringTarget({hrp.Position, position}, {camera, local_player_character, ignored_folder, (fake_third_person_object and fake_third_person_object:getCharacterModel() or nil), character});
                return #amount == 0;
            end;
        elseif wallcheck_type == "Bullet Check" and current_weapon and current_weapon:getWeaponType() == "Firearm" then
            local hrp = character_interface.isAlive() and character_interface:getCharacterObject():getRootPart() or nil;

            if hrp then
                local look_vector = (position - hrp.CFrame.Position).Unit;
                local acceleration = (current_weapon:getWeaponStat("bulletaccel") or 0) * look_vector + public_settings.bulletAcceleration;
                local bullet_speed = current_weapon:getWeaponStat("bulletspeed");
                local velocity = bullet_speed * look_vector;
    
                local result = utility_t.can_hit(hrp.CFrame.Position, position, velocity, acceleration, position, (current_weapon:getWeaponStat("penetrationdepth") or 0));
                return not result;
            end;
        end;

        return true;
    end;
    
    utility_t.instance_new = function(instance_type, properties)
        local instance = Instance.new(instance_type);

        for property, value in properties do
            instance[property] = value;
        end;

        return instance;
    end;

    utility_t.play_sound = function(volume, sound_id)
        local sound = utility_t.instance_new("Sound", {
            SoundId = sound_id,
            Volume = volume,
            Parent = workspace
        });

        sound:Play();

        utility_t.connect(sound.Ended, function()
            sound:Destroy();
        end);
    end;

    utility_t.lerp = function(start, goal, alpha)
        return start + (goal - start) * alpha;
    end;

    utility_t.get_coregui = function()
        return cloneref(game:GetService("CoreGui"));
    end;
end;

local math_t = {}; do
    math_t.calculate_predicted_position = function(origin, end_pos, velocity, bullet_speed) --// creidts to dementia enjoyer
        local distance = (origin - end_pos).Magnitude;
        local travel_time = distance / bullet_speed;
        local bullet_drop = 0.5 * workspace.Gravity * travel_time ^ 2;
    
        return end_pos + (velocity * travel_time) + Vector3.new(0, bullet_drop, 0);
    end;

    math_t.trajectory = function(start_pos, end_pos, acceleration, speed)
        local velocity = (4 * (acceleration:Dot(end_pos - start_pos) + speed * speed)) / (2 * acceleration:Dot(acceleration));
        local discriminant = ((velocity * velocity) - (4 * (end_pos - start_pos):Dot(end_pos - start_pos)) / acceleration:Dot(acceleration)) ^ 0.5;
    
        local time_1 = velocity - discriminant;
        local time_2 = velocity + discriminant;
        local time = time_1 < 0 and time_2 or time_1;
        time = time ^ 0.5;
    
        return (-acceleration * time / 2) + ((end_pos - start_pos) / time), time;
    end;
end;

local signal_t = {}; do --// custom signal library, this is the most effective one as i hate bindableevents >:[
    local signal_mt = {
        __index = {
            Connect = function(self, func)
                local all_connections = self._connections;
                all_connections[#all_connections + 1] = func;
            end,
            
            fire = function(self, ...)
                local all_connections = self._connections;
                
                for i = 1, #all_connections do
                    all_connections[i](...);
                end;
            end,
        }
    };
    
    signal_t.new = function()
        local self = {
            _connections = {},
        };
        return setmetatable(self, signal_mt);
    end;
end;

--// loader class
local loader_t = {
	screen_gui = nil,
	main_frame = nil,
	name = "Alysum",
	logo = "rbxassetid://125054542704258",
	progress_inner_bar = nil,
	progress_text = nil
}; do
	loader_t.new = function(name, logo)
		local mt = setmetatable(loader_t, {});
		
		if name then
			mt.name = name;
		end;
		
		if logo then
			mt.logo = logo;
		end;
		
		mt:init();
		
		return mt;
	end;
	
	loader_t.init = function(self)
		local screen_gui = utility_t.instance_new("ScreenGui", {
			Parent = utility_t.get_coregui(),
			ResetOnSpawn = false,
			Name = "loader_t",
			DisplayOrder = 9e9
		});	
		
		local main_frame = utility_t.instance_new("Frame", {
			Name = "main_frame",
			Parent = screen_gui,
			Size = UDim2.new(0, 299, 0, 299),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BorderColor3 = Color3.fromRGB(121, 68, 155),
			AnchorPoint = Vector2.new(0.5, 0.5)
		});
		
		local progress_text = utility_t.instance_new("TextLabel", {
			Name = "progress_text",
			Parent = main_frame,
			Text = "",
			BackgroundTransparency = 1,
			Size = UDim2.new(0.5, 0, 0.05, 0),
			TextScaled = true,
			TextColor3 = Color3.new(1, 1, 1),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.1, 0),
			TextStrokeTransparency = 0
		});
		
		utility_t.instance_new("UIStroke", {
			Name = "ui_stroke",
			Parent = main_frame,
			LineJoinMode = Enum.LineJoinMode.Miter,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
			Color = Color3.fromRGB(121, 68, 155)
		});
		
		utility_t.instance_new("UIGradient", {
			Name = "ui_gradient",
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))
			}),
			Rotation = 90,
			Parent = main_frame
		});
		
		local logo = utility_t.instance_new("ImageLabel", {
			Parent = main_frame,
			Image = self.logo,
			Name = "logo", 
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 165, 0, 165),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0)
		});
		
		local progress_bar = utility_t.instance_new("Frame", {
			Parent = main_frame,
			Position = UDim2.new(0.25, 0, 0.7, 0),
			Size = UDim2.new(0, 0, 0.05, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(48, 48, 48),
			BorderSizePixel = 0,
			BackgroundTransparency = 1
		});
		
		local progress_inner_bar = utility_t.instance_new("Frame", {
			Parent = progress_bar,
			Size = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			BackgroundColor3 = Color3.fromRGB(121, 68, 155),
			BorderSizePixel = 0
		});
		
		local progress_stroke = utility_t.instance_new("UIStroke", {
			Name = "ui_stroke",
			Parent = progress_bar,
			LineJoinMode = Enum.LineJoinMode.Miter,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
			Color = Color3.fromRGB(121, 68, 155),
			Transparency = 1
		});
		
		utility_t.instance_new("UIGradient", {
			Name = "ui_gradient",
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 48, 48)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))
			}),
			Rotation = 0,
			Parent = progress_bar
		});
		
		task.delay(0.2, function()
			local tween_info = TweenInfo.new(0.7);
			local logo_tween = tween_service:Create(logo, tween_info, {Position = UDim2.new(0.5, 0, 0.4, 0)});

			logo_tween:Play();

			utility_t.connect(logo_tween.Completed, function()
				progress_bar.BackgroundTransparency = 0;
				progress_stroke.Transparency = 0;
				
				local progress_tween_info = TweenInfo.new(0.7);
				local progress_tween = tween_service:Create(progress_bar, progress_tween_info, {
					Position = UDim2.new(0.5, 0, 0.7, 0),
					Size = UDim2.new(0.5, 0, 0.05, 0)
				});

				progress_tween:Play();
			end);
		end);
		
		self.screen_gui = screen_gui;
		self.main_frame = main_frame;
		self.progress_inner_bar = progress_inner_bar;
		self.progress_text = progress_text;
	end;
	
	loader_t.set_progress = function(self, progress)
		self.progress_inner_bar.Size = UDim2.new(progress, 0, 1, 0);
	end;
	
	loader_t.destroy = function(self)
		self.screen_gui:Destroy();
	end;
	
	loader_t.set_progress_text = function(self, text)
		self.progress_text.Text = text;
	end;
end;

local visuals_t = {}; do
    visuals_t.tracer = function(from, to, color, duration, fade_enabled, fade_duration, transparency, thickness)
        local tween;
        local normalized_color = Color3.new(
            math.clamp(color.R, 0, 1),
            math.clamp(color.G, 0, 1),
            math.clamp(color.B, 0, 1)
        ); --// some retarded fix gpt made
        local total_time = 0;

        local main_part = utility_t.instance_new("Part", {
            Parent = ignored_folder,
            Size = Vector3.new(0, 0, 0),
            Massless = true,
            Transparency = 1,
            CanCollide = false,
            Position = from,
            Anchored = true
        });

        local part0 = utility_t.instance_new("Part", {
            Parent = ignored_folder,
            Size = Vector3.new(0, 0, 0),
            Massless = true,
            Transparency = 1,
            CanCollide = false,
            Position = from,
            Anchored = true
        });

        local part1 = utility_t.instance_new("Part", {
            Parent = main_part,
            Size = Vector3.new(0, 0, 0),
            Massless = true,
            Transparency = 1,
            CanCollide = false,
            Position = to,
            Anchored = true
        });

        local attachment0 = utility_t.instance_new("Attachment", {
            Parent = part0
        });

        local attachment1 = utility_t.instance_new("Attachment", {
            Parent = part1
        });

        local beam = utility_t.instance_new("Beam", {
            Texture = "rbxassetid://446111271",
            TextureMode = Enum.TextureMode.Wrap,
            TextureLength = 10,
            LightEmission = 1,
            LightInfluence = 1,
            FaceCamera = true,
            ZOffset = -1,
            Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, transparency),
                NumberSequenceKeypoint.new(0.5, 0),
                NumberSequenceKeypoint.new(1, transparency)
            }),            
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, normalized_color),
                ColorSequenceKeypoint.new(1, normalized_color),
            }),
            Attachment0 = attachment0,
            Attachment1 = attachment1,
            Enabled = true,
            Parent = main_part,
            Width0 = thickness,
            Width1 = thickness
        });

        if fade_enabled then
            tween = utility_t.connect(run_service.Heartbeat, function(delta_time)
                total_time += delta_time;
                beam.Transparency = NumberSequence.new(tween_service:GetValue((total_time / fade_duration), Enum.EasingStyle.Linear, Enum.EasingDirection.In));
            end);
        end;

        task.delay(duration, function()
            main_part:Destroy();

            if tween then
                tween:Disconnect();
            end;
        end);
    end;

    visuals_t.impact = function(color_inline, color_outline, inline_transparency, outline_transparency, size, outline_thickness, fade_enabled, fade_duration, duration, position)
        local impact = utility_t.instance_new("Part", {
            CanCollide = false,
            Material = Enum.Material.Neon,
            Size = Vector3.new(size, size, size),
            Color = color_inline,
            Position = position,
            Transparency = inline_transparency,
            Anchored = true,
            Parent = ignored_folder
        });

        local outline = utility_t.instance_new("SelectionBox", {
            LineThickness = outline_thickness;
            Color3 = color_outline;
            SurfaceTransparency = 1;
            Transparency = outline_transparency,
            Adornee = impact;
            Visible = true;
            Parent = impact
        });

        if fade_enabled then
            local tween_info = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.In);
            local tween = tween_service:Create(impact, tween_info, {Transparency = 1});
            local tween_outline = tween_service:Create(outline, tween_info, {Transparency = 1});

            tween:Play();
            tween_outline:Play();
        end;

        task.delay(duration, function()
            impact:Destroy();
        end);
    end;

    local check_part = function(part)
        local children = part:GetChildren();

        for i = 1, #children do
            local instance = children[i];

            if instance.ClassName == "Decal" or instance.ClassName == "Texture" then
                instance.Transparency = 1;
            elseif instance.ClassName == "SpecialMesh" then
                instance.TextureId = "";
            end;
        end;
    end;

    visuals_t.hit_chams = function(player, color, transparency, material)
        local third_person_object = entries[player]:getThirdPersonObject();

        if not third_person_object then
            return end;

        local character = third_person_object:getCharacterModel();

        local all_parts = {};

        local parts = character:GetChildren();
        
        for i = 1, #parts do
            local part = parts[i];
            
            if part.ClassName == "MeshPart" or part.ClassName == "Part" then
                local cloned_part = part:Clone();
                cloned_part.Anchored = true;
                cloned_part.CanCollide = false;
                cloned_part.Color = color;
                cloned_part.Material = material;
                cloned_part.Transparency = transparency;
                cloned_part.Parent = ignored_folder;

                check_part(cloned_part);

                all_parts[#all_parts + 1] = cloned_part;
            end;
        end;

        return all_parts;
    end;
end;

--// create the loader
local main_loader = loader_t.new();
--// create the fake player
local fake_player = utility_t.instance_new("Player", {
    Name = local_player.Name
});

--// bypass their stupid checks
for index, upvalue in debug.getupvalues(replication_object.new) do
    if upvalue == local_player then
        debug.setupvalue(replication_object.new, index, fake_player);
    end;
end;

--// some fake stuff for third person
local fake_replication_object = replication_object.new(local_player);

--// signals
local bullet_hit = signal_t.new();
local bullet_shot = signal_t.new();

--// drawings
local silent_aim_fov_inline = utility_t.draw("Circle", {
    Visible = false,
    Radius = 80,
    Color = ACCENT,
    Thickness = 1,
    Filled = true
});

local silent_aim_fov_outline = utility_t.draw("Circle", {
    Visible = false,
    Radius = 80,
    Thickness = 1,
    Color = ACCENT
});

local silent_aim_fov_deadzone_inline = utility_t.draw("Circle", {
    Visible = false,
    Radius = 80,
    Color = ACCENT,
    Thickness = 1,
    Filled = true
});

local silent_aim_fov_deadzone_outline = utility_t.draw("Circle", {
    Visible = false,
    Radius = 80,
    Thickness = 1,
    Color = ACCENT
});

local silent_aim_line = utility_t.draw("Line", {
    Visible = false,
    Thickness = 1,
    Color = ACCENT
});

--// vars
local closest_player_silent_aim = nil;
local silent_aim_position;

--// loader
main_loader:set_progress(0.4);
main_loader:set_progress_text("Getting the entries table");
task.wait(0.5);

main_loader:set_progress_text("Loading the UI");

task.wait(0.5);

--// ui
do
    local library = Library;

    --// create the window
    local window = library:Window({Name = "Aly", Sub = "sum", Size = Vector2.new(500, 650)});

    --// tabs
    local combat = window:Tab({Name = "Combat"});
    local visuals = window:Tab({Name = "Visuals"});
    local misc = window:Tab({Name = "Misc"});
    local config = window:Tab({Name = "Config"});

    --// legit
    do
        local silent_aim = combat:Section({Name = "Silent Aim", Side = "Right"});

        silent_aim:Toggle({Name = "Enabled", Flag = "legit_silent_aim_enabled"});
        local fov_toggle = silent_aim:Toggle({Name = "Field Of View", Flag = "legit_silent_aim_field_of_view_enabled"});
        local deadzone_toggle = silent_aim:Toggle({Name = "Dead Zone", Flag = "legit_silent_aim_deadzone_enabled"});
        deadzone_toggle:Colorpicker({Name = "Dead Zone Outline Color", Info = "Dead Zone Outline Color", Flag = "legit_silent_aim_deadzone_outline_color", Default = Color3.fromRGB(25, 25, 25), Alpha = 1});
        deadzone_toggle:Colorpicker({Name = "Dead Zone Inline Color", Info = "Dead Zone Inline Color", Flag = "legit_silent_aim_deadzone_inline_color", Default = Color3.fromRGB(25, 25, 25), Alpha = 0.3});
        silent_aim:Toggle({Name = "Closest Body Part", Flag = "legit_silent_aim_closest_body_part"});
        silent_aim:Toggle({Name = "Line", Flag = "legit_silent_aim_line"}):Colorpicker({Name = "Line Color", Info = "Line Color", Flag = "legit_silent_aim_line_color", Default = ACCENT, Alpha = 1});
        silent_aim:Toggle({Name = "Prediction", Flag = "legit_silent_aim_prediction"});
        silent_aim:Toggle({Name = "Auto Shoot", Flag = "legit_silent_aim_auto_shoot"});
        silent_aim:Toggle({Name = "WallCheck", Flag = "legit_silent_aim_wallcheck"});
        silent_aim:Dropdown({Name = "Aim Part", Flag = "legit_silent_aim_aim_part", Options = {"Head", "Torso"}, Default = "Head"});
        silent_aim:Dropdown({Name = "Wall Check Type", Flag = "legit_silent_aim_wallcheck_type", Options = {"Raycast", "Bullet Check"}, Default = "Raycast"});
        fov_toggle:Colorpicker({Name = "FOV Outline Color", Info = "FOV Outline Color", Flag = "legit_silent_aim_field_of_view_outline_color", Default = ACCENT, Alpha = 1});
        fov_toggle:Colorpicker({Name = "FOV Inline Color", Info = "FOV Inline Color", Flag = "legit_silent_aim_field_of_view_inline_color", Default = ACCENT, Alpha = 0.3});
        silent_aim:Slider({Name = "FOV Radius", Flag = "legit_silent_aim_field_of_view", Default = 12.5, Minimum = 0.5, Maximum = 200, Decimals = 2, Ending = "%"});
        silent_aim:Slider({Name = "Dead Zone Radius", Flag = "legit_silent_aim_deadzone_radius", Default = 12.5, Minimum = 0.5, Maximum = 20, Decimals = 2, Ending = "%"});
        silent_aim:Slider({Name = "FOV Sides", Flag = "legit_silent_aim_field_of_view_sides", Default = 15, Minimum = 3, Maximum = 60});
        silent_aim:Slider({Name = "Line Thickness", Flag = "legit_silent_aim_line_thickness", Default = 1, Minimum = 1, Maximum = 10});
    end;

    ---// visuals
    do
        
        --// sections
        local esp_global, esp_local = visuals:MultiSection({Name = "ESP", Sections = {"Global", "Local"}});
        local bullet_tracers = visuals:Section({Name = "Bullet Tracers"});
        local hit_detection = visuals:Section({Name = "Hit Detection", Side = "Right"});
        local bullet_impacts = visuals:Section({Name = "Bullet Impacts", Side = "Right"});
        local third_person = visuals:Section({Name = "Third Person"});
        local misc_visuals = visuals:Section({Name = "Misc", Side = "Right"});

        --// esp
        do
            --// esp global
            do
                esp_global:Toggle({Name = "Enabled", Flag = "visuals_esp_enabled"});
                esp_global:Toggle({Name = "Boxes", Flag = "visuals_esp_boxes_enabled"}):Colorpicker({Name = "Boxes Color", Info = "Boxes Color", Flag = "visuals_esp_boxes_color", Default = ACCENT, Transparency = 1});
                esp_global:Toggle({Name = "Filled Boxes", Flag = "visuals_esp_filled_boxes_enabled"}):Colorpicker({Name = "Filled Boxes Color", Info = "Filled Boxes Color", Flag = "visuals_esp_filled_boxes_color", Default = ACCENT, Transparency = 0.3});
                esp_global:Toggle({Name = "Healthbar", Flag = "visuals_esp_healthbar_enabled"}):Colorpicker({Name = "Healthbar Color", Info = "Healthbar Color", Flag = "visuals_esp_healthbar_color", Default = ACCENT, Transparency = 1});
                esp_global:Toggle({Name = "Healthtext", Flag = "visuals_esp_healthtext_enabled"}):Colorpicker({Name = "Healthtext Color", Info = "Healthtext Color", Flag = "visuals_esp_healthtext_color", Default = ACCENT, Transparency = 1});
                esp_global:Toggle({Name = "Names", Flag = "visuals_esp_names_enabled"}):Colorpicker({Name = "Names Color", Info = "Names Color", Flag = "visuals_esp_names_color", Default = ACCENT, Transparency = 1});
                esp_global:Toggle({Name = "Distance", Flag = "visuals_esp_distance_enabled"}):Colorpicker({Name = "Distance Color", Info = "Distance Color", Flag = "visuals_esp_distance_color", Default = ACCENT, Transparency = 1});
                esp_global:Toggle({Name = "Animations", Flag = "visuals_esp_use_animations"});
                esp_global:Toggle({Name = "Use Display Names", Flag = "visuals_esp_names_use_display_name"});
            end;
    
            --// esp local
            do
                esp_local:Toggle({Name = "Enabled", Flag = "visuals_esp_enabled_local"});
                esp_local:Toggle({Name = "Boxes", Flag = "visuals_esp_boxes_enabled_local"}):Colorpicker({Name = "Boxes Color", Info = "Boxes Color", Flag = "visuals_esp_boxes_color_local", Default = ACCENT, Transparency = 1});
                esp_local:Toggle({Name = "Filled Boxes", Flag = "visuals_esp_filled_boxes_enabled_local"}):Colorpicker({Name = "Filled Boxes Color", Info = "Filled Boxes Color", Flag = "visuals_esp_filled_boxes_color_local", Default = ACCENT, Transparency = 0.3});
                esp_local:Toggle({Name = "Healthbar", Flag = "visuals_esp_healthbar_enabled_local"}):Colorpicker({Name = "Healthbar Color", Info = "Healthbar Color", Flag = "visuals_esp_healthbar_color_local", Default = ACCENT, Transparency = 1});
                esp_local:Toggle({Name = "Healthtext", Flag = "visuals_esp_healthtext_enabled_local"}):Colorpicker({Name = "Healthtext Color", Info = "Healthtext Color", Flag = "visuals_esp_healthtext_color_local", Default = ACCENT, Transparency = 1});
                esp_local:Toggle({Name = "Names", Flag = "visuals_esp_names_enabled_local"}):Colorpicker({Name = "Names Color", Info = "Names Color", Flag = "visuals_esp_names_color_local", Default = ACCENT, Transparency = 1});
                esp_local:Toggle({Name = "Distance", Flag = "visuals_esp_distance_enabled_local"}):Colorpicker({Name = "Distance Color", Info = "Distance Color", Flag = "visuals_esp_distance_color_local", Default = ACCENT, Transparency = 1});
                esp_local:Toggle({Name = "Animations", Flag = "visuals_esp_use_animations_local"});
                esp_local:Toggle({Name = "Use Display Names", Flag = "visuals_esp_names_use_display_name_local"});
            end;
        end;

        --// bullet tracers
        do
            bullet_tracers:Toggle({Name = "Enabled", Flag = "visuals_bullet_tracers_enabled"}):Colorpicker({Name = "Bullet Tracers Color", Info = "Bullet Tracers Color", Flag = "visuals_bullet_tracers_color", Default = ACCENT, Alpha = 0});
            bullet_tracers:Toggle({Name = "Fade", Flag = "visuals_bullet_tracers_fade"});
            bullet_tracers:Slider({Name = "Duration", Flag = "visuals_bullet_tracers_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 2, Ending = "s"});
            bullet_tracers:Slider({Name = "Fade Duration", Flag = "visuals_bullet_tracers_fade_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 2, Ending = "s"});
            bullet_tracers:Slider({Name = "Thickness", Flag = "visuals_bullet_tracers_thickness", Default = 0.1, Minimum = 0.5, Maximum = 10, Decimals = 2, Ending = "%"});
        end;

        --// hit detection
        do
            local all_sounds = {};

            for name, _ in hit_sounds do
                table.insert(all_sounds, name);
            end;

            hit_detection:Toggle({Name = "Enabled", Flag = "visuals_hit_detection_enabled"});
            hit_detection:Toggle({Name = "Chams", Flag = "visuals_hit_detection_hit_chams"}):Colorpicker({Name = "Chams Color", Info = "Chams Color", Flag = "visuals_hit_detection_hit_chams_color", Default = ACCENT, Transparency = 0});
            hit_detection:Toggle({Name = "Fade Out", Flag = "visuals_hit_detection_hit_chams_fade"});
            hit_detection:Toggle({Name = "Sounds", Flag = "visuals_hit_detection_sounds_enabled"});
            hit_detection:Dropdown({Name = "Material", Flag = "visuals_hit_detection_hit_chams_material", Options = {"SmoothPlastic", "Neon", "ForceField"}, Default = "SmoothPlastic"});
            hit_detection:Slider({Name = "Chams Duration", Flag = "visuals_hit_detection_hit_chams_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 5, Ending = "s"});
            hit_detection:Slider({Name = "Fade Chams Duration", Flag = "visuals_hit_detection_hit_chams_fade_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 5, Ending = "s"});
            hit_detection:Slider({Name = "Volume", Flag = "visuals_hit_detection_sound_volume", Default = 1, Minimum = 1, Maximum = 10, Decimals = 10, Ending = "%"});
            hit_detection:Dropdown({Name = "Which Sound", Flag = "visuals_hit_detection_which_sound", Options = all_sounds, Default = all_sounds[1]});
        end;

        --// bullet impacts
        do
            local bullet_impact_toggle = bullet_impacts:Toggle({Name = "Enabled", Flag = "visuals_bullet_impacts_enabled"});
            bullet_impact_toggle:Colorpicker({Name = "Bullet Impacts Inline Color", Info = "Bullet Impacts Inline Color", Flag = "visuals_bullet_impacts_inline_color", Default = ACCENT, Alpha = 0.6});
            bullet_impact_toggle:Colorpicker({Name = "Bullet Impacts Outline Color", Info = "Bullet Impacts Outline Color", Flag = "visuals_bullet_impacts_outline_color", Default = ACCENT, Alpha = 0});
            bullet_impacts:Toggle({Name = "Fade", Flag = "visuals_bullet_impacts_fade"});
            bullet_impacts:Slider({Name = "Duration", Flag = "visuals_bullet_impacts_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 2, Ending = "s"});
            bullet_impacts:Slider({Name = "Fade Duration", Flag = "visuals_bullet_impacts_fade_duration", Default = 1, Minimum = 1, Maximum = 10, Decimals = 2, Ending = "s"});
            bullet_impacts:Slider({Name = "Size", Flag = "visuals_bullet_impacts_size", Default = 0.1, Minimum = 0.5, Maximum = 10, Decimals = 2, Ending = "%"});
            bullet_impacts:Slider({Name = "Outline Thickness", Flag = "visuals_bullet_impacts_outline_thickness", Default = 0.1, Minimum = 0.5, Maximum = 10, Decimals = 2, Ending = "%"});
        end;

        --// third person
        do
            third_person:Toggle({Name = "Enabled", Flag = "visuals_third_person_enabled"}):Keybind({Flag = "visuals_third_person_key", Default = Enum.KeyCode.B, Mode = "Toggle"});
            third_person:Toggle({Name = "Instant Replication", Flag = "visuals_third_person_instant_replication"});
            third_person:Slider({Name = "Distance", Flag = "visuals_third_person_distance", Default = 10, Minimum = 0.5, Maximum = 20, Decimals = 10, Ending = "st"});
        end;

        --// misc
        do
            misc_visuals:Toggle({Name = "No Sway", Flag = "misc_visuals_no_sway"});
        end;
    end;

    --// misc
    do
        --// sections
        local anti_aim = misc:Section({Name = "Anti Aim"});
        local cframe_fly = misc:Section({Name = "CFrame Fly", Side = "Right"});
        local cframe_speed = misc:Section({Name = "CFrame Speed", Side = "Right"});
        local misc_section = misc:Section({Name = "Misc", Side = "Right"});

        --// anti aim
        do
            anti_aim:Toggle({Name = "Enabled", Flag = "misc_anti_aim_enabled"});
            anti_aim:Dropdown({Name = "Direction", Flag = "misc_anti_aim_direction", Options = {"Up", "Down", "Schizophrenia"}, Default = "Up"});    
        end;

        --// cframe fly
        do
            cframe_fly:Toggle({Name = "Enabled", Flag = "misc_cframe_fly_enabled"}):Keybind({Flag = "misc_cframe_fly_keybind", Default = Enum.KeyCode.N, KeybindName = "CFrame Fly", Mode = "Toggle"});
            cframe_fly:Slider({Name = "Speed", Flag = "misc_cframe_fly_speed", Default = 1, Minimum = 0.1, Maximum = 10, Decimals = 2, Ending = "st"});
            cframe_fly:Keybind({Name = "Up Key", Flag = "misc_cframe_fly_up", Default = Enum.KeyCode.Space, KeybindName = "Fly Up", Mode = "Hold"});
            cframe_fly:Keybind({Name = "Down Key", Flag = "misc_cframe_fly_down", Default = Enum.KeyCode.Space, KeybindName = "Fly Down", Mode = "Hold"});
        end;
        
        --// cframe speed
        do
            cframe_speed:Toggle({Name = "Enabled", Flag = "misc_cframe_speed_enabled"}):Keybind({Flag = "misc_cframe_speed_keybind", Default = Enum.KeyCode.H, KeybindName = "CFrame Speed", Mode = "Toggle"});
            cframe_speed:Slider({Name = "Speed", Flag = "misc_cframe_speed_speed", Default = 0.5, Minimum = 0.1, Maximum = 1, Decimals = 20, Ending = "st"});
        end;

        --// misc section
        do
            --// local auto_peek_key = misc_section:Toggle({Name = "Auto Peek", Flag = "misc_auto_peek_enabled"});
            --// auto_peek_key:Keybind({Flag = "misc_auto_peek_keybind", KMethod = "Hold", Callback = function()
            --//     
            --// end});
            misc_section:Toggle({Name = "Fake Lag", Flag = "misc_fake_lag_enabled"});
            misc_section:Toggle({Name = "Bunny Hop", Flag = "misc_bunny_hop_enabled"}):Keybind({Flag = "misc_bunny_hop_keybind", Default = Enum.KeyCode.Space, KeybindName = "Bunny Hop", Mode = "Hold"});
            misc_section:Slider({Name = "Lag Amount", Flag = "misc_fake_lag_amount", Default = 0.5, Minimum = 0.1, Maximum = 1, Decimals = 20, Ending = "%"});
        end;
    end;

    --// config
    do  
        local config_section = config:Section({Name = "Configs"});
        config_section:Keybind({Name = "Menu Bind", Flag = "configs_menu_bind", Mode = "Toggle", callback = function(p) Library:SetOpen(not p) end});

        local config_list = config_section:Dropdown({Name = "Files", options = {}, List = true, Flag = "cfg_path"});
        local current_list = {};
        local function update_config_list()
            local list = {};
            for idx, file in ipairs(listfiles(Library.Folders.configs)) do
                local file_name = file:gsub(Library.Folders.main .. "/Configs\\", ""):gsub(".cfg", "");
                list[#list + 1] = file_name;
            end;
        
            local is_new = #list ~= #current_list
            if not is_new then
                for idx, file in ipairs(list) do
                    if file ~= current_list[idx] then
                        is_new = true;
                        break;
                    end;
                end;
            end;
        
            if is_new then
                current_list = list;
                config_list:Refresh(list);
            end;
        end;
        -- 
        config_section:Textbox({Name = "Name", Flag = "cfg_name"});
        --config_list:Refresh({"Hello","Jcpcjaw"})
        config_section:Button({Name = "Load", callback = function()
            if isfile(Library.Folders.main .. "/Configs/"..Library.Flags.cfg_path .. ".cfg") then
                Library:LoadConfig(readfile(Library.Folders.main .. "/Configs/"..Library.Flags.cfg_path .. ".cfg"));
            end;
        end});
        -- 
        config_section:Button({Name = "Save", callback = function()
            writefile(Library.Folders.main .. "/Configs/"..Library.Flags.cfg_name .. ".cfg", Library:GetConfig());
        end});
        config_section:Button({Name = "Delete", callback = function()
            if isfile(Library.Folders.main .. "/Configs/"..Library.Flags.cfg_path .. ".cfg") then
                delfile(Library.Folders.main .. "/Configs/"..Library.Flags.cfg_path .. ".cfg");
            end;
        end});
        -- 
        task.spawn(function()
            while task.wait(1) do 
                update_config_list();
            end;
        end);
    end;
end;


main_loader:set_progress(0.6);

task.wait(0.5);
main_loader:set_progress_text("Loading The ESP");

--// esp class
local esp_t = {
    _players = {}
}; do
    esp_t.create_esp = function(self, player)
        local new_esp = {
            tracer = utility_t.fake_draw("Line", {
                Color = Color3.new(1, 1, 1),
                Thickness = 1,
                Visible = false
            }),
            box_outline = utility_t.fake_draw("Square", {
                Thickness = 3,
                ZIndex = 1,
                Filled = false,
                Visible = false
            }),
            box = utility_t.fake_draw("Square", {
                Color = Color3.new(1, 1, 1),
                Thickness = 1,
                ZIndex = 2,
                Filled = false,
                Visible = false
            }),
            filled_box = utility_t.fake_draw("Square", {
                Color = Color3.new(1, 1, 1),
                Thickness = 1,
                Filled = true,
                Visible = false
            }),
            health_bar_outline = utility_t.fake_draw("Line", {
                Thickness = 3,
                ZIndex = 1,
                Visible = false,
                Color = Color3.new(0, 0, 0)
            }),
            health_bar_inline = utility_t.fake_draw("Line", {
                Thickness = 1,
                ZIndex = 2,
                Visible = false,
            }),
            name = utility_t.fake_draw("Text", {
                Visible = false,
                Outline = true,
                Size = 9,
                Font = 2,
                Center = true
            }),
            distance = utility_t.fake_draw("Text", {
                Visible = false,
                Outline = true,
                Size = 9,
                Font = 2,
                Center = true
            }),
            health_text = utility_t.fake_draw("Text", {
                Visible = false,
                Outline = true,
                Size = 9,
                Font = 2,
                Center = true
            }),
            flags = utility_t.fake_draw("Text", {
                Visible = false,
                Outline = true,
                Size = 9,
                Font = 2,
                Center = true
            }),
            smoothed_health = 100
        };

        self._players[player] = new_esp;
    end;

    esp_t.remove_esp = function(self, player)
        local player_esp_object = self._players[player];

        if player_esp_object then
            for _, drawing_object in player_esp_object do
                if type(drawing_object) ~= "number" and type(drawing_object) ~= "boolean" then
                    drawing_object:Remove();
                end;
            end;
        end;
    end;

    esp_t.hide_esp = function(self, player)
        local player_esp_object = self._players[player];

        if player_esp_object then
            for _, drawing_object in player_esp_object do
                if type(drawing_object) ~= "number" and type(drawing_object) ~= "boolean" then
                    drawing_object.Visible = false;
                end;
            end;
        end;
    end;

    local all_players = players:GetPlayers();

    for i = 1, #all_players do
        local player = all_players[i];

        if player ~= fake_player then
            esp_t:create_esp(player);
        end;
    end;

    utility_t.connect(players.PlayerAdded, function(player)
        esp_t:create_esp(player);
    end);

    utility_t.connect(players.PlayerRemoving, function(player)
        esp_t:remove_esp(player);
    end);

    utility_t.connect(run_service.RenderStepped, function()
        for player, esp_object in esp_t._players do
            local is_local_player = (flags["visuals_third_person_enabled"] and flags["visuals_third_person_key"] and character_interface.isAlive()) and player == local_player;
            
            local flags_prefix = is_local_player and "local" or "";
            local esp_enabled = flags["visuals_esp_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local boxes_enabled = flags["visuals_esp_boxes_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local boxes_color = flags["visuals_esp_boxes_color" .. (flags_prefix ~= "" and "_local" or "")];
            local filled_boxes = flags["visuals_esp_filled_boxes_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local filled_boxes_color = flags["visuals_esp_filled_boxes_color" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_healthbar_enabled = flags["visuals_esp_healthbar_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_healthbar_color = flags["visuals_esp_healthbar_color" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_healthtext_enabled = flags["visuals_esp_healthtext_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_healthtext_color = flags["visuals_esp_healthtext_color" .. (flags_prefix ~= "" and "_local" or "")];
            local names_enabled = flags["visuals_esp_names_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local names_color = flags["visuals_esp_names_color" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_distance_enabled = flags["visuals_esp_distance_enabled" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_distance_color = flags["visuals_esp_distance_color" .. (flags_prefix ~= "" and "_local" or "")];
            local esp_animations = flags["visuals_esp_use_animations" .. (flags_prefix ~= "" and "_local" or "")];
            local use_display_name = flags["visuals_esp_names_use_display_name" .. (flags_prefix ~= "" and "_local" or "")];

            if player ~= local_player and player.Team == local_player.Team then
                esp_t:hide_esp(player); continue end;

            local entry = is_local_player and fake_replication_object or entries[player];

            if not entry then
                esp_t:hide_esp(player); continue end;
            
            local third_person_object = is_local_player and fake_third_person_object or entry:getThirdPersonObject();

            if not third_person_object then
                esp_t:hide_esp(player); continue end;

            local health = is_local_player and character_interface.getCharacterObject():getHealth() or entry:getHealth(); --// freaky

            local torso = third_person_object._torso;

            if not torso then --// this is likely to not happend but hey sanity checks!
                esp_t:hide_esp(player); continue end;

            esp_object.smoothed_health = utility_t.lerp(esp_object.smoothed_health, health, 0.1)

            local viewport_position, on_screen = camera:WorldToViewportPoint(torso.Position);
            local screen_position = Vector2.new(viewport_position.X, viewport_position.Y);
            
            local scale = 1000 / (camera.CFrame.Position - torso.Position).Magnitude * 80 / camera.FieldOfView;
            local box_size = Vector2.new(2.5 * scale, 4 * scale);
            local adjust_x = screen_position.X - (box_size.X / 2);
            local adjust_y = screen_position.Y - (box_size.Y / 2);
            
            local box_position = Vector2.new(adjust_x, adjust_y);
            
            local outline_offset = -2;
            local box_outline_size = Vector2.new(box_size.X + outline_offset, box_size.Y + outline_offset);
            local box_outline_position = Vector2.new(adjust_x - (outline_offset / 2), adjust_y - (outline_offset / 2));
            
            if esp_enabled and boxes_enabled then
                local box_outline = esp_object.box_outline;
                local box = esp_object.box;
                
                box.Visible = on_screen;
                box_outline.Visible = on_screen;
                box_outline.Position = box_outline_position;
                box.Position = box_position;
                box_outline.Size = box_outline_size;
                box.Size = box_size;
                box.Color = boxes_color.Color;
                box.Transparency = boxes_color.Transparency;
                box_outline.Transparency = boxes_color.Transparency;
            else
                esp_object.box_outline.Visible = false;
                esp_object.box.Visible = false;
            end;

            if esp_enabled and boxes_enabled and filled_boxes then
                local filled_box = esp_object.filled_box;

                filled_box.Visible = on_screen;
                filled_box.Size = box_size;
                filled_box.Position = box_position;
                filled_box.Color = filled_boxes_color.Color;
                filled_box.Transparency = filled_boxes_color.Transparency;
            else
                esp_object.filled_box.Visible = false;
            end;
            
            if esp_enabled and names_enabled then
                local name_object = esp_object.name;
                name_object.Visible = on_screen;
                name_object.Text = use_display_name and player.DisplayName or player.Name;
                name_object.Position = Vector2.new(box_size.X / 2 + box_position.X, box_position.Y - (12));
                name_object.Color = names_color.Color;
                name_object.Transparency = names_color.Transparency;
            else
                esp_object.name.Visible = false;
            end;

            if esp_enabled and esp_distance_enabled then
                local distance_object = esp_object.distance;
                distance_object.Visible = on_screen;
                distance_object.Text = tostring(math.floor((camera.CFrame.Position - torso.Position).Magnitude)) .. "st";
                distance_object.Position = Vector2.new(box_size.X / 2 + box_position.X, box_position.Y + box_size.Y + (3));
                distance_object.Color = esp_distance_color.Color;
                distance_object.Transparency = esp_distance_color.Transparency;
            else
                esp_object.distance.Visible = false;
            end;
            
            if esp_enabled and esp_healthbar_enabled then
                local inline = esp_object.health_bar_inline;
                local outline = esp_object.health_bar_outline;

                outline.Visible = on_screen;
                inline.Visible = on_screen;

                local new_health = esp_animations and esp_object.smoothed_health or health;
                local health_ratio = new_health / 100;

                local from_inline = Vector2.new((box_position.X - 5), box_position.Y + box_size.Y + 1);
                local to_inline = Vector2.new(from_inline.X, from_inline.Y - (health_ratio * box_size.Y) - 2);

                inline.From = from_inline;
                inline.To = to_inline;

                local from_outline = Vector2.new(from_inline.X, box_position.Y + box_size.Y + 2);
                local to_outline = Vector2.new(from_inline.X, from_inline.Y - box_size.Y - 3);

                outline.From = from_outline;
                outline.To = to_outline;
                outline.Transparency = esp_healthbar_color.Transparency;
                inline.Transparency = esp_healthbar_color.Transparency;
                inline.Color = esp_healthbar_color.Color;
            else
                esp_object.health_bar_inline.Visible = false;
                esp_object.health_bar_outline.Visible = false;
            end;
            
            if esp_enabled and esp_healthtext_enabled then
                local health_text = esp_object.health_text;

                local new_health = esp_animations and esp_object.smoothed_health or health;
                local health_ratio = health / 100;

                local from_inline = Vector2.new((box_position.X - 5) - (health_text.TextBounds.X / 2), box_position.Y + box_size.Y + 1);
                local to_inline = Vector2.new(from_inline.X - 5, from_inline.Y - (health_ratio * box_size.Y));
                
                health_text.Visible = on_screen;
                health_text.Text = tostring(math.floor(new_health));
                health_text.Position = to_inline;
                health_text.Color = esp_healthtext_color.Color;
                health_text.Transparency = esp_healthtext_color.Transparency;
            else
                esp_object.health_text.Visible = false;
            end;
        end;
    end);
end;

--// camera class
local camera_t = {}; do
    --// main functions
    camera_t.get_main_camera = function()
        return camera_interface.getActiveCamera("MainCamera");    
    end;

    camera_t.set_angles = function(self, angle)
        self.get_main_camera()._angles = angle;
    end;

	camera_t.get_look_vector = function(self)
		return self.get_main_camera():getLookVector();
	end;
	
	camera_t.get_angles = function(self)
		return self.get_main_camera():getAngles();
	end;

    camera_t.get_cframe = function(self)
        return self.get_main_camera():getCFrame();
    end;

    camera_t.get_actual_angles = function(self)
		return self.get_main_camera()._angles;
	end;

	camera_t.set_look_vector = function(self, look_vector) --// pasted from pf itself
		local main_camera = self.get_main_camera();

		--// main_camera._didChange = true;
		local v1, v2 = vector_lib.toanglesyx(look_vector);
		local camera_angles = main_camera._angles.y;
		local new_angles = Vector3.new((main_camera._maxAngle < v1 and main_camera._maxAngle or v1 < main_camera._minAngle and main_camera._minAngle) or v1, (((v2 + 3.141592653589793) - camera_angles) % 6.283185307179586 - 3.141592653589793) + camera_angles, 0);
		main_camera._delta = (new_angles - main_camera._angles) / main_camera._lookDt;
		main_camera._angles = new_angles;
	end;

	camera_t.get_direction = function(self, position)
		return (position - self:get_cframe().Position).Unit;
	end;

    --// helper functions
    camera_t.get_angles_from_position = function(position)
        local direction = (camera.CFrame.Position - position).Unit;
        local pitch = math.asin(-direction.Y);	
        local yaw = math.atan2(direction.X, direction.Z);

        return Vector3.new(math.deg(pitch), math.deg(yaw), 0);
    end;
end;

local combat_t = {
    aim_parts = {
        ["Head"] = "_head",
        ["Torso"] = "_torso"
    }
}; do
    combat_t.get_closest_player = function(fov_enabled, fov, deadzone_enabled, deadzone_radius, wallcheck, wallcheck_type)
        local radius = fov_enabled and fov or math.huge;
        local actual_deadzone_radius = deadzone_enabled and deadzone_radius or 0;
        local mouse_position = utility_t.get_center();
        local closest_player;
        
        local all_players = players:GetPlayers();
        
        for i = 1, #all_players do
            local player = all_players[i];
            
            if player ~= local_player and player.Team ~= local_player.Team then
                local entry = entries[player];

                if not entry then
                    continue end;

                local third_person_object = entry:getThirdPersonObject();

                if not third_person_object then
                    continue end;
                
                local torso = third_person_object._torso;
                
                if not torso then
                    continue end;

                if wallcheck then
                    local visible = utility_t.is_position_visible(torso.Position, third_person_object:getCharacterModel(), wallcheck_type);
                    set_thread_identity(8);
                    if not visible then
                        continue end;
                end;
                
                local screen_position, on_screen = camera:WorldToViewportPoint(torso.Position);
                
                if not on_screen then
                    continue end;
                
                local distance = utility_t.get_distance(mouse_position, Vector2.new(screen_position.X, screen_position.Y));
                
                if distance < actual_deadzone_radius then
                    continue end;
                
                if distance <= radius then
                    closest_player = player;
                    radius = distance;
                end;
            end;
        end;
        
        return closest_player;
    end;    
end;

--// connections
do
    --// legit
    do
        utility_t.connect(run_service.Heartbeat, function()
            local silent_aim_enabled = flags["legit_silent_aim_enabled"];
            local silent_aim_field_of_view_enabled = flags["legit_silent_aim_field_of_view_enabled"];
            local silent_aim_field_of_view_outline_color = flags["legit_silent_aim_field_of_view_outline_color"];
            local silent_aim_field_of_view_inline_color = flags["legit_silent_aim_field_of_view_inline_color"];
            local silent_aim_deadzone_enabled = flags["legit_silent_aim_deadzone_enabled"];
            local silent_aim_deadzone_outline_color = flags["legit_silent_aim_deadzone_outline_color"];
            local silent_aim_deadzone_inline_color = flags["legit_silent_aim_deadzone_inline_color"];
            local silent_aim_prediction = flags["legit_silent_aim_prediction"];
            local silent_aim_aim_part = flags["legit_silent_aim_aim_part"];
            local silent_aim_field_of_view = flags["legit_silent_aim_field_of_view"];
            local silent_aim_deadzone_radius = flags["legit_silent_aim_deadzone_radius"];
            local silent_aim_field_of_view_sides = flags["legit_silent_aim_field_of_view_sides"];
            local silent_aim_line_thickness = flags["legit_silent_aim_line_thickness"];
            local silent_aim_line_enabled = flags["legit_silent_aim_line"];
            local silent_aim_line_color = flags["legit_silent_aim_line_color"];
            local silent_aim_wallcheck = flags["legit_silent_aim_wallcheck"];
            local silent_aim_auto_shoot = flags["legit_silent_aim_auto_shoot"];
            local silent_aim_wallcheck_type = flags["legit_silent_aim_wallcheck_type"];

            if silent_aim_enabled and silent_aim_field_of_view_enabled then
                local mouse_position = utility_t.get_center();

                silent_aim_fov_inline.Visible = true;
                silent_aim_fov_outline.Visible = true;

                silent_aim_fov_inline.Position = mouse_position;
                silent_aim_fov_outline.Position = mouse_position;

                silent_aim_fov_inline.Color = silent_aim_field_of_view_inline_color.Color;
                silent_aim_fov_outline.Color = silent_aim_field_of_view_outline_color.Color;
                
                silent_aim_fov_inline.Transparency = silent_aim_field_of_view_inline_color.Transparency;
                silent_aim_fov_outline.Transparency = silent_aim_field_of_view_outline_color.Transparency;

                silent_aim_fov_outline.Radius = silent_aim_field_of_view * 3;
                silent_aim_fov_inline.Radius = silent_aim_field_of_view * 3;

                silent_aim_fov_outline.NumSides = silent_aim_field_of_view_sides;
                silent_aim_fov_inline.NumSides = silent_aim_field_of_view_sides;
            else
                silent_aim_fov_inline.Visible = false;
                silent_aim_fov_outline.Visible = false;
            end;

            if silent_aim_enabled and silent_aim_deadzone_enabled then
                local mouse_position = utility_t.get_center();

                silent_aim_fov_deadzone_inline.Visible = true;
                silent_aim_fov_deadzone_outline.Visible = true;

                silent_aim_fov_deadzone_inline.Position = mouse_position;
                silent_aim_fov_deadzone_outline.Position = mouse_position;

                silent_aim_fov_deadzone_inline.Color = silent_aim_deadzone_inline_color.Color;
                silent_aim_fov_deadzone_outline.Color = silent_aim_deadzone_outline_color.Color;

                silent_aim_fov_deadzone_inline.Transparency = silent_aim_deadzone_inline_color.Transparency;
                silent_aim_fov_deadzone_outline.Transparency = silent_aim_deadzone_outline_color.Transparency;

                silent_aim_fov_deadzone_inline.Radius = silent_aim_deadzone_radius * 3;
                silent_aim_fov_deadzone_outline.Radius = silent_aim_deadzone_radius * 3;

                silent_aim_fov_deadzone_inline.NumSides = silent_aim_field_of_view_sides;
                silent_aim_fov_deadzone_outline.NumSides = silent_aim_field_of_view_sides;
            else
                silent_aim_fov_deadzone_inline.Visible = false;
                silent_aim_fov_deadzone_outline.Visible = false;
            end;

            if silent_aim_enabled then
                closest_player_silent_aim = combat_t.get_closest_player(silent_aim_field_of_view_enabled, silent_aim_field_of_view * 3, silent_aim_deadzone_enabled, silent_aim_deadzone_radius * 3, silent_aim_wallcheck, silent_aim_wallcheck_type);
            end;

            if silent_aim_enabled and closest_player_silent_aim and silent_aim_line_enabled and silent_aim_position then
                local screen_position, on_screen = camera:WorldToViewportPoint(silent_aim_position);

                silent_aim_line.Visible = on_screen;
                silent_aim_line.From = utility_t.get_center();
                silent_aim_line.To = Vector2.new(screen_position.X, screen_position.Y);
                silent_aim_line.Color = silent_aim_line_color.Color;
                silent_aim_line.Transparency = silent_aim_line_color.Transparency;
                silent_aim_line.Thickness = silent_aim_line_thickness;
            else
                silent_aim_line.Visible = false;
            end;
            
            if silent_aim_enabled and silent_aim_auto_shoot and closest_player_silent_aim and silent_aim_position and utility_t.is_position_visible(silent_aim_position, entries[closest_player_silent_aim]:getThirdPersonObject():getCharacterModel(), flags["legit_silent_aim_wallcheck_type"]) then
                weapons_t:shoot_active_weapon()
            end;

            if silent_aim_enabled and closest_player_silent_aim then
                local weapon = weapons_t:get_active_weapon();
                local entry = entries[closest_player_silent_aim];

                local new_position = entry:getThirdPersonObject()[combat_t.aim_parts[silent_aim_aim_part]].Position;
                silent_aim_position = (silent_aim_prediction and (weapon and weapon:getWeaponType() == "Firearm")) and math_t.calculate_predicted_position(camera.CFrame.Position, new_position, entry._velspring.t, weapon:getWeaponStat("bulletspeed")) or new_position;
            end;
        end);
    end;

    --// visuals
	do
		--// third person
		local stances = {
			prone = 0.5,
			crouch = 1
		};
		
		local old_set_movement_mode = clonefunction(character_object.setMovementMode);
		local old_spawn = clonefunction(character_interface.spawn);
		local old_despawn = clonefunction(character_interface.despawn);
		local old_swap_weapon = clonefunction(weapon_controller_object.swapWeapon);
        local old_set_aim = clonefunction(firearm_object.setAim);
        local old_get_bob_cframe = clonefunction(sway.getBobCFrame);

		--// function hooks for replication
		character_object.setMovementMode = function(self, new_mode, ...)
		    local new_stance_number = stances[new_mode] or 0;
			
			if fake_third_person_object then
				fake_third_person_object:setStanceNumber(new_stance_number);
			end;
			
		    return old_set_movement_mode(self, new_mode, ...);
		end;
		
		--// main spawning hooks
		character_interface.spawn = function(...)
            local loadout = active_loadout_utils.getActiveLoadoutData(player_data_client_interface.getPlayerData());            
            fake_replication_object._activeWeaponRegistry = {};
            
            local primary = loadout.Primary;

            if primary then
                fake_replication_object._activeWeaponRegistry[1] = {
                    weaponName = primary.Name, 
                    weaponData = modify_data.getModifiedData(content_database.getWeaponData(primary.Name), primary.Attachments, primary.AttData), 
                    attachmentData = primary.Attachments, 
                    camoData = primary.Camo
                };
            end;

            local secondary = loadout.Secondary;

            if secondary then
                fake_replication_object._activeWeaponRegistry[2] = {
                    weaponName = secondary.Name, 
                    weaponData = modify_data.getModifiedData(content_database.getWeaponData(secondary.Name), secondary.Attachments, secondary.AttData), 
                    attachmentData = secondary.Attachments, 
                    camoData = secondary.Camo
                };
            end;

            local knife = loadout.Knife;

            if knife then
                fake_replication_object._activeWeaponRegistry[3] = {
                    weaponName = knife.Name, 
                    weaponData = content_database.getWeaponData(knife.Name), 
                    camoData = knife.Camo
                };
            end;

            local active_weapon_index = loadout.activeWeaponIndex or next(fake_replication_object._activeWeaponRegistry);
            fake_replication_object._activeWeaponIndex = active_weapon_index;
            fake_replication_object._thirdPersonObject = third_person_object.new(local_player, nil, fake_replication_object);
            fake_replication_object._thirdPersonObject:equip(active_weapon_index, true);
            fake_replication_object._alive = true;
            fake_replication_object:resetSprings();
            fake_replication_object._thirdPersonObject:setReady();

            fake_third_person_object = fake_replication_object._thirdPersonObject;

			old_spawn(...);
		end;
		
		character_interface.despawn = function(...)
            if fake_replication_object._alive and fake_third_person_object then
                fake_third_person_object:Destroy();
                fake_replication_object:despawn();
                fake_third_person_object = nil;
            end;

			old_despawn(...);
		end;

        --// weapon_controller_object.requestPickUpFirearm = function(...)
        --//     print("aaa");
        --// end;

        --// gun swapping hooks
        weapon_controller_object.swapWeapon = function(self, _, weapon_slot, force_equip)
            if fake_replication_object._alive and fake_third_person_object and fake_replication_object._activeWeaponRegistry[weapon_slot] then
                fake_third_person_object:equip(weapon_slot, true);
            end;

            old_swap_weapon(self, _, weapon_slot, force_equip);
        end;
		
        --// aiming hooks
        firearm_object.setAim = function(self, state)
            if fake_replication_object._alive and fake_third_person_object then
                fake_third_person_object:setAim(state);
            end;

            return old_set_aim(self, state);
        end;

        --// kick weapon hook
        utility_t.connect(bullet_shot, function(...)
            if fake_replication_object._alive and fake_third_person_object then
                local weapon = weapons_t:get_active_weapon();

                if weapon then
                    fake_third_person_object:kickWeapon(weapon:getWeaponStat("hideflash"), weapon:getWeaponStat("firesoundid"), weapon:getWeaponStat("firepitch") * (1 + 0.05 * math.random()), weapon:getWeaponStat("firevolume"));
                end;
            end;
        end);

		--// main updating
		utility_t.connect(run_service.Heartbeat, function()
			if flags["visuals_third_person_enabled"] and flags["visuals_third_person_key"] and fake_replication_object._alive and character_interface.isAlive() then
				local character_object = character_interface:getCharacterObject();
				local root_part = character_object:getRootPart();
				local camera_look_vector = camera_t:get_look_vector();
				local camera_angles = camera_t:get_angles();
				local move_direction = character_object:getMovementDirection();
                --// local current_weapon = weapons_t:get_active_weapon();

				local time = game_clock.getTime();

				if not flags["visuals_third_person_instant_replication"] then					
					local broke = false;
					
					fake_replication_object:step(true);

					if fake_replication_object._lastPacketTime and time - fake_replication_object._lastPacketTime > 0.5 then
						broke = true;
						fake_replication_object._breakcount = fake_replication_object._breakcount + 1;
					end;
		
					fake_replication_object._smoothReplication:receive(time, time, {
						t = time, 
						position = root_part.Position, 
						velocity = Vector3.zero, 
						angles = camera_angles, 
						breakcount = fake_replication_object._breakcount
					}, broke);
		
					fake_replication_object._receivedPosition = root_part.Position;
					fake_replication_object._receivedFrameTime = time;
					fake_replication_object._lastAngles = camera_angles;
					fake_replication_object._lastPacketTime = time;
				else
					fake_third_person_object:setCharacterRender(true);
					fake_third_person_object:step(true, root_part.CFrame, move_direction, camera_angles, camera_look_vector);
				end;

                character_object._leftArmModel.Parent = nil;
                character_object._rightArmModel.Parent = nil;

                --// if current_weapon then
                --//     current_weapon._weaponModel.Parent = nil;
                --// end;
			else
				if fake_third_person_object then
					fake_third_person_object:setCharacterRender(false);
				end;

                if character_interface.isAlive() then
                    local character_object = character_interface:getCharacterObject();
                    --// local current_weapon = weapons_t:get_active_weapon();

                    character_object._leftArmModel.Parent = camera;
                    character_object._rightArmModel.Parent = camera;

                    --// if current_weapon then
                    --//     current_weapon._weaponModel.Parent = camera;
                    --// end;
                end;
			end;
		end);

        --// bullet visuals
        utility_t.connect(bullet_shot, function(unique_id, info, time)
            local bullets = info.bullets;
            local start_position = info.firepos;

            local bullet_tracers_enabled = flags["visuals_bullet_tracers_enabled"];
            local bullet_tracers_color = flags["visuals_bullet_tracers_color"];
            local bullet_tracers_fade = flags["visuals_bullet_tracers_fade"];
            local bullet_tracers_duration = flags["visuals_bullet_tracers_duration"];
            local bullet_tracers_fade_duration = flags["visuals_bullet_tracers_fade_duration"];
            local bullet_tracers_thickness = flags["visuals_bullet_tracers_thickness"];
            
            local bullet_impacts_enabled = flags["visuals_bullet_impacts_enabled"];
            local bullet_impacts_inline_color = flags["visuals_bullet_impacts_inline_color"];
            local bullet_impacts_outline_color = flags["visuals_bullet_impacts_outline_color"];
            local bullet_impacts_fade = flags["visuals_bullet_impacts_fade"];
            local bullet_impacts_duration = flags["visuals_bullet_impacts_duration"];
            local bullet_impacts_fade_duration = flags["visuals_bullet_impacts_fade_duration"];
            local bullet_impacts_size = flags["visuals_bullet_impacts_size"];
            local bullet_impacts_outline_thickness = flags["visuals_bullet_impacts_outline_thickness"]

            for i = 1, #bullets do
                local bullet = bullets[i];

                local direction = bullet[1].unit.Unit;
                local end_position = start_position + direction * 300;
                
                local raycast_params = RaycastParams.new();
                raycast_params.FilterType = Enum.RaycastFilterType.Exclude;
                raycast_params.FilterDescendantsInstances = { ignored_folder, workspace.Ignore, ignored_folder };
                raycast_params.IgnoreWater = true;

                local raycast_result = workspace:Raycast(start_position, direction * 300, raycast_params);

                local end_position_ray
                if raycast_result then
                    end_position_ray = raycast_result.Position;
                else
                    end_position_ray = start_position + direction * 300;
                end;

                if bullet_tracers_enabled then
                    visuals_t.tracer(start_position, end_position, bullet_tracers_color.Color, bullet_tracers_duration, bullet_tracers_fade, bullet_tracers_fade_duration, bullet_tracers_color.Transparency, bullet_tracers_thickness);
                end;

                if bullet_impacts_enabled then
                    visuals_t.impact(bullet_impacts_inline_color.Color, bullet_impacts_outline_color.Color, bullet_impacts_inline_color.Transparency, bullet_impacts_outline_color.Transparency, bullet_impacts_size, bullet_impacts_outline_thickness / 100, bullet_impacts_fade, bullet_impacts_fade_duration, bullet_impacts_duration, end_position_ray);
                end;
            end;
        end);

        --// hit detection
        utility_t.connect(bullet_hit, function(unique_id, player, ...)
            if flags["visuals_hit_detection_enabled"] and player then
                if flags["visuals_hit_detection_hit_chams"] then
                    local hit_detection_hit_chams_color = flags["visuals_hit_detection_hit_chams_color"];

                    local all_parts = visuals_t.hit_chams(player, hit_detection_hit_chams_color.Color, hit_detection_hit_chams_color.Transparency, Enum.Material[flags["visuals_hit_detection_hit_chams_material"]]);

                    task.delay(flags["visuals_hit_detection_hit_chams_duration"], function()
                        if flags["visuals_hit_detection_hit_chams_fade"] then
                            local tween_info = TweenInfo.new(flags["visuals_hit_detection_hit_chams_fade_duration"], Enum.EasingStyle.Linear, Enum.EasingDirection.In);
                            local tween_completed;

                            for i = 1, #all_parts do
                                local part = all_parts[i];

                                local tween = tween_service:Create(part, tween_info, {Transparency = 1});

                                tween:Play();

                                if not tween_completed then
                                    tween_completed = utility_t.connect(tween.Completed, function()
                                        part:Destroy();
                                    end);
                                end;
                            end;
                        else
                            for i = 1, #all_parts do
                                all_parts[i]:Destroy();
                            end;
                        end;
                    end);
                end;

                if flags["visuals_hit_detection_sounds_enabled"] then
                    local sound = hit_sounds[flags["visuals_hit_detection_which_sound"]];

                    if sound then
                        utility_t.play_sound(flags["visuals_hit_detection_sound_volume"], sound);
                    end;
                end;
            end;
        end);
        
        --// no sway
        do --// fucking hard coded i hate my life
            local old_firearm_walk_sway = clonefunction(firearm_object.computeWalkSway);
            local old_firearm_gun_sway = clonefunction(firearm_object.computeGunSway);
            local old_melee_walk_sway = clonefunction(melee_object.walkSway);
            local old_melee_melee_sway = clonefunction(melee_object.meleeSway);
            local old_grenade_walk_sway = clonefunction(grenade_object.walkSway);
            local old_grenade_model_sway = clonefunction(grenade_object.modelSway);
            local old_get_sway_cframe = clonefunction(sway.getSwayCFrame);

            firearm_object.computeWalkSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_firearm_walk_sway(...);
            end;

            firearm_object.computeGunSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_firearm_gun_sway(...);
            end;

            melee_object.walkSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_melee_walk_sway(...);
            end;

            melee_object.meleeSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_melee_melee_sway(...);
            end;

            grenade_object.walkSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_grenade_walk_sway(...);
            end;

            grenade_object.modelSway = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end
                return old_grenade_model_sway(...);
            end;

            sway.getSwayCFrame = function(...)
                if flags["misc_visuals_no_sway"] then
                    return CFrame.new(0, 0, 0);
                end;

                return old_get_sway_cframe(...);
            end;
        end;

        sway.getBobCFrame = function(...)
            if flags["misc_visuals_no_bob"] then
                return CFrame.new(0, 0, 0);
            end;

            return old_get_bob_cframe(...);
        end;
	end;

    --// misc
    do
        --// anti aim
        local old_get_angles = clonefunction(main_camera_object.getAngles);

        local directions = {
            ["Up"] = Vector3.new(2, 0, 0),
            ["Down"] = Vector3.new(-2, -2, -2)
        };

        main_camera_object.getAngles = function(self)
            if flags["misc_anti_aim_enabled"] then
                return directions[flags["misc_anti_aim_direction"]] or Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2));
            end;
        
            return old_get_angles(self);
        end;
    end;

    --// silent aim
    do
        local old_fire_round = clonefunction(firearm_object.fireRound);

        firearm_object.fireRound = function(self, ...)
            local is_aiming = self:isAiming();

            local old_barrel_offset = is_aiming and self._activeAimOffsets[self:getActiveAimStat("sightpart")] or self._barrelOffset;

            if flags["legit_silent_aim_enabled"] and closest_player_silent_aim and silent_aim_position then
                local main_part_cframe = self._mainPart.CFrame;
                local new_offset = main_part_cframe:ToObjectSpace(CFrame.new(main_part_cframe.Position, silent_aim_position));

                if is_aiming then
                    self._activeAimOffsets[self:getActiveAimStat("sightpart")] = new_offset;
                else
                    self._barrelOffset = new_offset;
                end;
            
                local result = old_fire_round(self, ...);

                if is_aiming then
                    self._activeAimOffsets[self:getActiveAimStat("sightpart")] = old_barrel_offset;
                else
                    self._barrelOffset = old_barrel_offset;
                end;

                return result;
            end;

            return old_fire_round(self, ...);
        end;
    
        --// firearm_object.isAiming = function(self) --// temp fix
        --//     if flags["legit_silent_aim_enabled"] and closest_player_silent_aim and debug.getinfo(2).name == "fireRound" then
        --//         return false;
        --//     end;

        --//     return old_is_aiming(self);
        --// end;
    end;

    --// misc
    do
        utility_t.connect(run_service.Heartbeat, function(delta_time)
            local cframe_fly_enabled = flags["misc_cframe_fly_enabled"];
            local cframe_fly_keybind = flags["misc_cframe_fly_keybind"];
            local cframe_fly_speed = flags["misc_cframe_fly_speed"];
            local cframe_fly_up = flags["misc_cframe_fly_up"];
            local cframe_fly_down = flags["misc_cframe_fly_down"];
            local cframe_speed_enabled = flags["misc_cframe_speed_enabled"];
            local cframe_speed_speed = flags["misc_cframe_speed_speed"];
            local cframe_speed_keybind = flags["misc_cframe_speed_keybind"];
            local bunny_hop_enabled = flags["misc_bunny_hop_enabled"];
            local bunny_hop_keybind = flags["misc_bunny_hop_keybind"];

            if cframe_fly_enabled and cframe_fly_keybind and character_interface.isAlive() then
                local character_object = character_interface:getCharacterObject();

                local move_direction = character_object:getMovementDirection();
                local hrp = character_object:getRealRootPart();

                local add = Vector3.new(0, (cframe_fly_up and cframe_fly_speed / 8 or cframe_fly_down and -cframe_fly_speed / 8) or 0, 0);

                hrp.CFrame = hrp.CFrame + (move_direction * delta_time) * cframe_fly_speed * 10;
                hrp.CFrame = hrp.CFrame + add;
                hrp.Velocity = Vector3.zero;
            end;

            if cframe_speed_enabled and cframe_speed_keybind and character_interface.isAlive() then
                local character_object = character_interface:getCharacterObject();

                local move_direction = character_object:getMovementDirection();
                local hrp = character_object:getRealRootPart();

                hrp.CFrame += move_direction * cframe_speed_speed;
            end;

            if bunny_hop_enabled and bunny_hop_keybind and character_interface.isAlive() then
                local character_object = character_interface:getCharacterObject();

                character_object._humanoid.Jump = true;
            end;
        end);
    end;
end;

--// other hooks
do
    --// main third person hook
    local old_newindex; old_newindex = hookmetamethod(game, "__newindex", newcclosure(function(self, property, value)
        if not checkcaller() and self == camera and property == "CFrame" and flags["visuals_third_person_enabled"] and flags["visuals_third_person_key"] and character_interface.isAlive() then
            local distance = flags["visuals_third_person_distance"];
    
            local original_position = value.Position;
            local look_vector = value.LookVector;
            local camera_position = original_position - look_vector * distance;
            local third_person_cframe = CFrame.new(camera_position, original_position);
            
            value = third_person_cframe;
        end;
    
        return old_newindex(self, property, value);
    end));
end;

--// network hook
do
    local bad_arguments = {"debug", "flaguser"};

    local old_send = clonefunction(network_client.send);

    network_client.send = function(self, name, ...)
        local arguments = {...};

        if table.find(bad_arguments, name) then
            return;
        end;

        local time = game_clock.getTime();

        if name == "newbullets" then
            bullet_shot:fire(...);
        elseif name == "bullethit" then
            bullet_hit:fire(...);
        elseif name == "repupdate" and flags["misc_fake_lag_enabled"] then
            if time - last_choke_tick < flags["misc_fake_lag_amount"] then
                return;
            end;
            
            last_choke_tick = time;
        end;

        return old_send(self, name, unpack(arguments));
    end;
end;

main_loader:set_progress(1);

task.wait(3);

main_loader:destroy();