--[[ 시계가 나오는 예제 - Spoon 이라는 개념을 알아야함
hs.loadSpoon("AClock")
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
  spoon.AClock:toggleShow()
end)
--]]
