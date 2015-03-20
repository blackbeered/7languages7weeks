; runMe
; java -cp ~/workspace/clojure-1.6.0/clojure-1.6.0.jar clojure.main clojure.clj 

(defn make-adder [x]
  (let [y x]
    (fn [z] (+ y z))))
(def add2 (make-adder 2))
(add2 4)