local gamespeed = {}

gamespeed.DEFAULT = 1
gamespeed.MODIFIERS = { 0.5, 0.75, 1, 1.5, 2, 3, 5, 10 }

function gamespeed.next(current)
  for i = 1, #gamespeed.MODIFIERS do
    if gamespeed.MODIFIERS[i] > current then
      return gamespeed.MODIFIERS[i]
    end
  end
  return current
end

function gamespeed.prev(current)
  for i = #gamespeed.MODIFIERS, 1, -1 do
    if gamespeed.MODIFIERS[i] < current then
      return gamespeed.MODIFIERS[i]
    end
  end
  return current
end

return gamespeed
