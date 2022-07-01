;;
;; This is the solution for the Check permutation problem, in Clojure
;;
;; @author Ruvart, <contacto@ruvart.com>
;;

(ns check_permutation
    "Check permutation solution")



(require '[clojure.string :as str])



(defn checkPermutation_1 [str_1 str_2]
    (def ordered_str_1 (-> str_1
        (str/split #"")
        (sort)
        ))

    (def ordered_str_2 (-> str_2
        (str/split #"")
        (sort)
        ))

    (= ordered_str_1 ordered_str_2)
    
    )



(def str_1 "1234567891011121314151617181920")
(def str_2 "1678011718191213149115162345120")
(def str_3 "1234567891011121314151617181920")
(def str_4 "1234567891022221314151617181920")


(println "checkPermutation_1\n\"" str_1 "\"\n\"" str_2 "\"\nResult:")
(def ini (inst-ms (java.util.Date.)))
(if (checkPermutation_1 str_1 str_2)
    (println "Valid permuted strings.\t Time (millisec): " (- (inst-ms (java.util.Date.)) ini) "\n")
    (println "Not valid permuted strings.\t Time (millisec): " (- (inst-ms (java.util.Date.)) ini) "\n"))


(println "checkPermutation_1\n\"" str_3 "\"\n\"" str_4 "\"\nResult:")
(def ini (inst-ms (java.util.Date.)))
(if (checkPermutation_1 str_3 str_4)
    (println "Valid permuted strings.\t Time (millisec): " (- (inst-ms (java.util.Date.)) ini) "\n")
    (println "Not valid permuted strings.\t Time (millisec): " (- (inst-ms (java.util.Date.)) ini) "\n"))