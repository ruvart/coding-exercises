<?php
/**
 * This is the solution for the urlify problem, in PHP
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

declare(strict_types=1);


/**
 * @param String $str
 * @return String
 */
function urlify_1(String $str): String {
    $str_array = explode(" ",$str);
    $new_str = implode("%20",$str_array);

    return $new_str;
}


/**
 * @param String $str
 * @return String
 */
function urlify_2(String $str): String {
    $str_array = str_split($str);

    $str_array = array_map(fn($char) => (($char == " ") ? "%20" : $char), $str_array);

    return implode("",$str_array);
}



$str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna";

echo "urlify_1:\n\"" . $str . "\"";
$ini    = microtime(true);
$result = urlify_1($str);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
echo "[" . $time . "] " . $result . "\n\n";


echo "urlify_2:\n\"" . $str . "\"";
$ini    = microtime(true);
$result = urlify_2($str);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
echo "[" . $time . "] " . $result . "\n\n";