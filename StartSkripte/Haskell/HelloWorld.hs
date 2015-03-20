-- interaktive Konsole:
-- ghci
-- beenden mit :quit

-- runMe:
-- ghc HelloWorld.hs; ./HelloWorld

add :: Int -> Int -> Int
add x y = x + y

double :: Int -> Int
double x = add x x

main = do
    print ("Hello " ++ "World")
    print (double 5)

