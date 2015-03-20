; runMe
; java -cp ~/workspace/clojure-1.6.0/clojure-1.6.0.jar clojure.main helloWorld.clj 

(defn make-adder [x]
  (let [y x]
    (fn [z] (+ y z))))
(def add2 (make-adder 2))
(def hello (fn [] "Hello world"))


(println (add2 4))
(println(+ 1 2 3 4))
(println(hello))

