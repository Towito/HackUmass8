local Component = require "components/index"

local Label = Component.Component:extend()
Component.add("label", Label)

function Label:new(gameobject, text)
    Component.Component.new(self, gameobject)

    self.offset_x = 0
    self.offset_y = 0
    self.text = text
    self.binding = nil
end

function Label:render()
    if self.binding then
        self.text = self.binding()
    end

    love.graphics.printf(self.text, self.gameobject.x - 200 + self.offset_x, self.gameobject.y + self.offset_y, 400, 'center')
end
