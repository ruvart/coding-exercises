<?php
/**
 * This is the solution for the Is unique problem, in PHP
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

declare(strict_types=1);

/**
 * If the string length is less than 2 return true.
 * 
 * Transform the string in to an array of chars, then create a second array with only the unique values of the array.
 * If the sizes of both arrays are equal, then return true, if not return false.
 * 
 * @param String $str
 * @return Bool
 */
function isUnique_1 ( String $str ): Bool {
    $str_length = strlen($str);

    if ( $str_length < 2 ) {
        return true;
    }

    $str_array        = str_split($str);
    $str_array_unique = array_unique($str_array);

    if ( $str_length != count($str_array_unique) ) {
        return false;
    }

    return true;
}


/**
 * If the string length is less than 2 return true.
 * 
 * Transform the string in to an array of chars, then for each char checks if it is set as key in the array of "chars found", if found then return false,
 * if not then add this char in to the array of "chars found" as a new key (associative arrayu)
 * 
 * @param String $str
 * @return Bool
 */
function isUnique_2 ( String $str ): Bool {
    $str_length  = strlen($str);
    $encontrados = [];

    if ( $str_length < 2 ) {
        return true;
    }

    $str_array = str_split($str);

    foreach ( $str_array as $char )  {
        if ( isset($encontrados[$char]) ) {
            return false;
        }

        $encontrados[$char] = true;
    }

    return true;
}


/**
 * If the string length is less than 2 return true.
 * 
 * Transform the string in to an array of chars, then search each char on an array of "chars found", if found then return false,
 * if not then add this char in to the array of "chars found" as a new value
 * 
 * @param String $str
 * @return Bool
 */
function isUnique_3 ( String $str ): Bool {
    $str_length  = strlen($str);
    $encontrados = [];

    if ( $str_length < 2 ) {
        return true;
    }

    $str_array = str_split($str);

    foreach ( $str_array as $char )  {
        if ( in_array($char,$encontrados) ) {
            return false;
        }

        $encontrados[] = $char;
    }

    return true;
}


/**
 * If the string length is less than 2 return true.
 * 
 * Transform the string in to an array of chars, then flip the arrar to use the values as keys so it will remain only 1 of each different char then compare the length of the result array with the string,
 * If the length is the same return true, if not return false
 * 
 * @param String $str
 * @return Bool
 */
function isUnique_4 ( String $str ): Bool {
    $str_length  = strlen($str);

    if ( $str_length < 2 ) {
        return true;
    }

    $str_array      = str_split($str);
    $str_array_flip = array_flip($str_array);

    if ( $str_length != count($str_array_flip) ) {
        return false;
    }

    return true;
}


/**
 * If the string length is less than 2 return true.
 * 
 * For each char in the string search for the same in the substribg from the position of this char to the end of the string
 * 
 * @param String $str
 * @return Bool
 */
function isUnique_5 ( String $str ): Bool {
    $str_length  = strlen($str);

    if ( $str_length < 2 ) {
        return true;
    }

    for ( $x = 1; $x < $str_length; $x++ ) {
        if ( strpos(substr($str,$x,$str_length-$x),$str[$x-1]) !== false ) {
            return false;
        }
    }

    return true;
}


/**
 * @param String $str
 * @return Bool
 */
function isUnique_6 ( String $str ): Bool {
    $str_length  = strlen($str);

    if ( $str_length < 2 ) {
        return true;
    }

    $str_array = str_split($str);
    sort($str_array);

    for ( $x = 1; $x < count($str_array); $x++ ) {
        if ( $str_array[$x-1] == $str_array[$x] ) {
            return false;
        }
    }

    return true;
}


$str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit";
$str_2 = "abcdefghijklmnopqrstuvwxyz ";


echo "isUnique_1 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_1($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_1 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_1($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";


echo "isUnique_2 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_2($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_2 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_2($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";


echo "isUnique_3 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_3($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_3 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_3($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";


echo "isUnique_4 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_4($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_4 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_4($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";


echo "isUnique_5 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_5($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_5 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_5($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";


echo "isUnique_6 - (" . strlen($str_1) . ") \"" . $str_1 . "\":\n";
$ini    = microtime(true);
$result = isUnique_6($str_1);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";

echo "isUnique_6 - (" . strlen($str_2) . ") \"" . $str_2 . "\":\n";
$ini    = microtime(true);
$result = isUnique_6($str_2);
$fin    = microtime(true);
$time   = round(($fin - $ini) * 1000);
if ( $result ) {
    echo "Son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
else {
    echo "No son caracteres únicos.\t Tiempo (milisec): " . $time . "\n";
}
echo "<br><br>\n\n";