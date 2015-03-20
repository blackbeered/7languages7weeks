import Bla
-- import MyList

add :: Int -> Int -> Int
add x y = x + y

double :: Int -> Int
double x = add x x

toRoman :: Int -> String
toRoman x = if (x < 1000) then (toRomanD x) else ("M" ++ (toRoman (x - 1000)))

toRomanD x = if (x < 500) then (toRomanC x) else ("D" ++ (toRomanD (x - 500)))

toRomanC x = if (x < 100) then (toRomanX x) else ("C" ++ (toRomanC (x - 100)))

toRomanX x = if (x < 10) then (toRomanV x) else ("X" ++ (toRomanX (x - 10)))

toRomanV x = if (x < 5) then (toRomanI x) else ("V" ++ (toRomanI (x - 5)))

toRomanI x = if (x < 1) then "" else ("I" ++ (toRomanI (x - 1)))

test e a = "erwartet: " ++ e ++ ", actual: " ++ a ++ " - " ++ (bool2string (e == a))
bool2string a = if a then "true" else "false"


main = do
    print (double (inc 5))
    print (inc 1)
  
    print (test "I" (toRoman 1))
    print (test "III" (toRoman 3))
    print (test "VII" (toRoman 7))
    print (test "IX" (toRoman 9))
    
    
    
    
-- Normalerweise geht man folgendermaßen vor: Man fügt einfach die Zahlzeichen ihrem Wert 
-- entsprechend so zusammen, daß ihre Summe die gesuchte Zahl ergibt, stets beginnend mit 
-- dem Zeichen mit dem höchsten Wert, z.B. hat LXVIII den Wert 50+10+5+1+1+1=68. 
-- Ausnahme: Um zu vermeiden, daß mehr als drei gleiche Zeichen hintereinander standen, 
-- verwendete man die folgende Notation: Steht ein weniger wertes Zeichen vor einem höherwertigen, 
-- so hat man den Wert des niedriger wertigen Zeichens von dem des höherwertigen abzuziehen. So 
-- schreibt mal 4 nicht als IIII, sondern als IV, also als 5-1. Analog entspricht IX der 9, XL der 40, XC der 90 etc.
    



    

