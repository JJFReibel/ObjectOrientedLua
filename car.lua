--[[]
  MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]

Car = { wheels=0, doors=0, cylinders=0,}

function Car:new (o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end
    
function Car:addWheels (wheel)
  self.wheels = self.wheels + wheel
end

function Car:addDoors (door)
  self.doors = self.doors + door
end    

function Car:addCylinders (cylinder)
  self.cylinders = self.doors + cylinder
end

function Car:deleteWheels (wheel)
  self.wheels = self.wheels - wheel
end

function Car:deleteDoors (door)
  self.doors = self.doors - door
end

function Car:deleteCylinders (cylinder)
  self.cylinders = self.doors - cylinder
end
    
print("Creating car.")
subaru = Car:new{wheels=4, doors=4, cylinders=4}
print("Wheels check: " .. tostring(subaru.wheels))
print("Doors check: " .. tostring(subaru.doors))
print("Cylinders check: " .. tostring(subaru.cylinders))
print("")
print("Adding wheel directly to car object.")
subaru.wheels = 5
print("Wheels check: " .. tostring(subaru.wheels))
print("Doors check: " .. tostring(subaru.doors))
print("Cylinders check: " .. tostring(subaru.cylinders))
print("")
print("Removing wheel using class method.")
subaru:deleteWheels(1)
print("Wheels check: " .. tostring(subaru.wheels))
print("Doors check: " .. tostring(subaru.doors))
print("Cylinders check: " .. tostring(subaru.cylinders))
print("")

--Car.addWheels(Car, 1)
print()
