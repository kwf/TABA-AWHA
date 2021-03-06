
{-                         Tell, Don't Show                         -}
                           ̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅̅

      {-# OPTIONS_GHC -fplugin=TypeNatSolver #-}
      
      convolveTABA :: ∀ a b n. Vec n a -> Vec n b -> Vec n (a,b)
      convolveTABA xs ys =
         case walk xs of
            (r, Nil) -> r
         where
            walk :: ∀ m. Vec m a -> (Vec m (a,b), Vec (n - m) b)
            walk      Nil  = (Nil, ys)
            walk (a :. as) =
               case walk as of
                  (r, b :. bs) ->     
                     ((a,b) :. r, bs) 

