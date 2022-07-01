;;
;; This is the solution for the urlify problem, in Clojure
;;
;; @author Ruvart, <contacto@ruvart.com>
;;

(ns urlify
    "Urlify a string solution")



(require '[clojure.string :as str])



(defn urlify_1 [str_1]
    (str/join "%20"
        (str/split str_1 #" "))
        )

(defn urlify_2 [str_1]
    (str/join "%20"
        (map #(if (= % " ") "%20" %) (str/split str_1 #" ")))
)




(def str_1 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna")


(println "urlify_1:\n" str_1 ":")
(def ini (inst-ms (java.util.Date.)))
(println "[" (- (inst-ms (java.util.Date.)) ini) "] \"" (urlify_1 str_1) "\n")


(println "urlify_2:\n" str_1 ":")
(def ini (inst-ms (java.util.Date.)))
(println "[" (- (inst-ms (java.util.Date.)) ini) "] \"" (urlify_2 str_1) "\n")