
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
      ([(xn, y1),
        (xm, y2)],     […, ym, yn])   
                                              STACK:   ⋮
                                                      x2
                                                      x1
-}
