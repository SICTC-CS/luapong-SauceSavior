Paddle=Class{}

function Paddle:init(x,y,width,height)
    self.x=x
    self.y=y 
    self.width=width
    self.height=height
    self.dx=0
    self.dy=0
end

function Paddle:update(dt)
    if self.dy<0 then 
        self.y=math.max(0,self.y+self.dy*dt)
    else
        self.y=math.min(VIRTUAL_HEIGHT-self.height,self.y+self.dy*dt)
    end

    if self.dx<0 then 
        self.x=math.max(0,self.x+self.dx*dt)
    else
        self.x=math.min(VIRTUAL_HEIGHT-self.height,self.x+self.dx*dt)
    end
end




function Paddle:render()
    love.graphics.rectangle('fill',self.x,self.y,self.width,self.height)
end