(ns armstrong-numbers
  (:require [clojure.string :as str]))

(defn expt [x n]
  (reduce * (repeat n x)))

(defn digits [n]
  (if (pos? n)
    (conj (digits (quot n 10)) (mod n 10) )
    []))

(defn armstrong? [num]
  (let [xs (digits num)
        l (count xs)
        res (map (fn [x] (expt x l)) xs)]
    (= (apply + res) num)))
