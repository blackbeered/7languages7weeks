module MyList where
    (++)       :: [a]->[a]->[a]
    []++ys     =  ys
    (x:xy)++ys =  x:(xs++ys)