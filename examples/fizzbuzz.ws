vim: set ft=clojure:

(defn fizzbuzz [n]
  (if (= 0 (mod n 15))
    "fizzbuzz"
    (if (= 0 (mod n 5))
      "buzz"
      (if (= 0 (mod n 3))
        "fizz"
        n))))

(defn cond-buzz [n]
  (cond
    (= 0 (mod n 15)) "fizzbuzz"
    (= 0 (mod n 5)) "buzz"
    (= 0 (mod n 3)) "fizz"
    n n))


