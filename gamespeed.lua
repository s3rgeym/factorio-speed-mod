local M = {}

M.MODIFIERS = { 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 5, 10 }
M.DEFAULT = M.MODIFIERS[4]

function next_speed(cur)
  for _, v in ipairs(M.MODIFIERS) do
    if v > cur then
      return v
    end
  end
  return cur
end

function prev_speed(cur)
  for i = #M.MODIFIERS, 1, -1 do
    if M.MODIFIERS[i] < cur then
      return M.MODIFIERS[i]
    end
  end
  return cur
end

function M.increase()
  game.speed = next_speed(game.speed)
end

function M.reduce()
  game.speed = prev_speed(game.speed)
end

return M
