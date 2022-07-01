;;
;; This is the solution for the Is unique problem, in Clojure
;;
;; @author Ruvart, <contacto@ruvart.com>
;;

(ns is_unique
    "Is unique solution")



(defn isUnique_1 [str]
    (def str_distinct (distinct str))
    (= (count str) (count str_distinct)))



(def str_1 "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
(def str_2 "abcdefghijklmnopqrstuvwxyz ")


(println "isUnique_1 - (" (count str_1) ") \"" str_1 "\":")
(def ini (inst-ms (java.util.Date.)))
(if (isUnique_1 str_1)
    (println "They are unique chars.\t Time (millisec):" (- (inst-ms (java.util.Date.)) ini) "\n")
    (println "They are not unique chars.\t Time (millisec):" (- (inst-ms (java.util.Date.)) ini) "\n"))


(println "isUnique_1 - (" (count str_2) ") \"" str_2 "\":")
(def ini (inst-ms (java.util.Date.)))
(if (isUnique_1 str_2)
    (println "They are unique chars.\t Time (millisec):" (- (inst-ms (java.util.Date.)) ini) "\n")
    (println "They are not unique chars.\t Time (millisec):" (- (inst-ms (java.util.Date.)) ini) "\n"))