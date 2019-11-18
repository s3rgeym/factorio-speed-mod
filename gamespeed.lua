local M = {}

M.MODIFIERS = { 0.25, 0.5, 0.75, 1, 1.5, 2, 4 }
M.DEFAULT = M.MODIFIERS[3] 

function M.next(cur)
  for i = 1, #M.MODIFIERS do
    if M.MODIFIERS[i] > cur then
      return M.MODIFIERS[i]
    end
  end
  return cur
end

function M.prev(cur)
  for i = #M.MODIFIERS, 1, -1 do
    if M.MODIFIERS[i] < cur then
      return M.MODIFIERS[i]
    end
  end
  return cur
end

return M
