<?php
/**
 * This is the solution for the Check permutation problem, in PHP
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

declare(strict_types=1);


/**
 * 
 * @param String $str_1
 * @param String $str_1
 * @return Bool
 */
function checkPermutation_1 (String $str_1, String $str_2): Bool {
    $str_1_length = strlen($str_1);

    if ( $str_1_length != strlen($str_2) ) {
        return false;
    }

    $str_1_array = str_split($str_1);
    $str_2_array = str_split($str_2);

    sort($str_1_array);
    sort($str_2_array);

    foreach ($str_1_array as $t_pos => $t_val ) {
        if ( $t_val != $str_2_array[$t_pos] ) {
            return false;
        }
    }

    return true;
}


/**
 * 
 * @param String $str_1
 * @param String $str_1
 * @return Bool
 */
function checkPermutation_2 (String $str_1, String $str_2): Bool {
    $str_1_length = strlen($str_1);

    if ( $str_1_length != strlen($str_2) ) {
        return false;
    }

    $str_1_array = str_split($str_1);
    $str_2_array = str_split($str_2);

    sort($str_1_array);
    sort($str_2_array);

    $new_str_1 = implode('',$str_1_array);
    $new_str_2 = implode('',$str_2_array);

    if ( $new_str_1 != $new_str_2 ) {
        return false;
    }

    return true;
}


/**
 * 
 * @param String $str_1
 * @param String $str_1
 * @return Bool
 */
function checkPermutation_3 (String $str_1, String $str_2): Bool {
    $str_1_length = strlen($str_1);

    if ( $str_1_length != strlen($str_2) ) {
        return false;
    }

    $str_1_array = str_split($str_1);
    $str_2_array = str_split($str_2);

    sort($str_1_array);
    sort($str_2_array);

    if ( $str_1_array !== $str_2_array ) {
        return false;
    }

    return true;
}



$str_1 = "1234567891011121314151617181920";
$str_2 = "1678011718191213149115162345120";
$str_3 = "1234567891011121314151617181920";
$str_4 = "1234567891022221314151617181920";


echo "checkPermutation_1\n\"" . $str_1 . "\"\n\"" . $str_2 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_1($str_1,$str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";

echo "checkPermutation_1\n\"" . $str_3 . "\"\n\"" . $str_4 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_1($str_3,$str_4);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";



echo "checkPermutation_2\n\"" . $str_1 . "\"\n\"" . $str_2 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_2($str_1,$str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";

echo "checkPermutation_2\n\"" . $str_3 . "\"\n\"" . $str_4 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_2($str_3,$str_4);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";



echo "checkPermutation_3\n\"" . $str_1 . "\"\n\"" . $str_2 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_3($str_1,$str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";

echo "checkPermutation_3\n\"" . $str_3 . "\"\n\"" . $str_4 . "\"\nResult:\n";
$ini    = microtime(true);
$result = checkPermutation_3($str_3,$str_4);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Valid permuted strings.\t Time (milisec): " . $time . "\n";
}
else {
    echo "Not valid permuted strings.\t Tiempo (milisec): " . $time . "\n";
}
echo "\n\n";