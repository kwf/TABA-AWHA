
{-                        Let's take a walk                         -}
                          ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

   convolveTABA xs ys =
      case walk xs of
         (r, []) -> r
      where
         walk :: [a] -> ([(a,b)], [b])
         walk      []  = ([], ys)
         walk (a : as) =
            case walk as of
               (r, b : bs) -> ((a,b) : r, bs)
{-
      walk [xn]
                                              STACK:  xm
                                                       ⋮
                                                      x2
                                                      x1
-}