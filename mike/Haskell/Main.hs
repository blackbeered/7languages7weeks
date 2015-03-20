import Bla

test e a = (bool2string (e == a) ++ " - erwartet: " ++ e ++ ", actual: " ++ a ++ " - ")
bool2string a = if a then "true" else "false"

toRoman :: Int -> String
toRoman n
    | n == 0 = ""
    | (n > 0 ) && (n < 4 ) = "I" ++ (toRoman ( n - 1))
    | n == 4 = "IV"
    | (n > 4) && ( n < 9 ) = "V" ++ (toRoman ( n - 5))
    | (n == 9 ) = "IX"
    | (n > 10) && (n < 40) = "X" ++ (toRoman (n - 10)) 
    | (n >= 40) && (n < 50) = "XL" ++ (toRoman (n - 40)) 
    | (n > 50) && (n <100) = "L" ++ (toRoman (n - 50))
    | otherwise = "."





main = do
    print (test "I" (toRoman 1))
    print (test "III" (toRoman 3))
    print (test "IV" (toRoman 4))
    print (test "VII" (toRoman 7))
    print (test "IX" (toRoman 9))
    print (test "XIV" (toRoman 14))
    print (test "XXXIX" (toRoman 39))
    print (test "XLIX" (toRoman 49))
    print (test "LXIX" (toRoman 69))
    
    
-- Normalerweise geht man folgendermaßen vor: Man fügt einfach die Zahlzeichen ihrem Wert 
-- entsprechend so zusammen, daß ihre Summe die gesuchte Zahl ergibt, stets beginnend mit 
-- dem Zeichen mit dem höchsten Wert, z.B. hat LXVIII den Wert 50+10+5+1+1+1=68. 
-- Ausnahme: Um zu vermeiden, daß mehr als drei gleiche Zeichen hintereinander standen, 
-- verwendete man die folgende Notation: Steht ein weniger wertes Zeichen vor einem 
-- höherwertigen, so hat man den Wert des niedriger wertigen Zeichens von dem des höherwertigen 
-- abzuziehen. So schreibt mal 4 nicht als IIII, sondern als IV, also als 5-1. Analog entspricht 
-- IX der 9, XL der 40, XC der 90 etc.
    



    

