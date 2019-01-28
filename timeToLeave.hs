--timeToLeave.hs
-- Apologies, this is doesn't feel very "Haskelly"
module TimeToLeave where

  minuteConv :: Integer -> (Integer, Integer)
  minuteConv x = ((div x 60), (mod x 60))

  hourConv :: (Integer, Integer) -> Integer
  hourConv (x, y) = (x * 60) + y

  workTime :: Integer
  workTime = 470

  timeToLeave :: (Integer, Integer) -> (Integer, Integer)
  timeToLeave (x, y) = minuteConv ((hourConv (x, y)) + workTime)
