/**
 * This is the solution for the Check permutation problem, in JavaScript
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


/**
 * 
 * @param {String} str_1 
 * @param {String} str_2 
 * @returns Boolean
 */
const checkPermutation_1 = function (str_1, str_2) {
    const str_1_length = str_1.length;

    if ( str_1_length != str_2.length ) {
        return false;
    }

    let str_1_array = str_1.split('');
    let str_2_array = str_2.split('');

    str_1_array.sort();
    str_2_array.sort();

    for ( let x in str_1_array ) {
        if ( str_1_array[x] != str_2_array[x] ) {
            return false;
        }
    }

    return true;
}


/**
 * 
 * @param {String} str_1 
 * @param {String} str_2 
 * @returns Boolean
 */
const checkPermutation_2 = function (str_1, str_2) {
    const str_1_length = str_1.length;

    if ( str_1_length != str_2.length ) {
        return false;
    }

    let str_1_array = str_1.split('');
    let str_2_array = str_2.split('');

    str_1_array.sort();
    str_2_array.sort();

    const new_str_1 = str_1_array.join();
    const new_str_2 = str_2_array.join();

    if ( new_str_1 != new_str_2 ) {
        return false;
    }

    return true;
}




const str_1 = "1234567891011121314151617181920";
const str_2 = "1678011718191213149115162345120";
const str_3 = "1234567891011121314151617181920";
const str_4 = "1234567891022221314151617181920";


console.log(`checkPermutation_1\n"${str_1}"\n"${str_2}"\nResult:`);
let d      = new Date();
let ini    = d.getMilliseconds();
let result = checkPermutation_1(str_1,str_2);
    d      = new Date();
let fin    = d.getMilliseconds();
if ( result ) {
    console.log('Valid permuted strings.\t Time (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('Not valid permuted strings.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`checkPermutation_1\n"${str_3}"\n"${str_4}"\nResult:`);
d      = new Date();
ini    = d.getMilliseconds();
result = checkPermutation_1(str_3,str_4);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Valid permuted strings.\t Time (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('Not valid permuted strings.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}



console.log(`checkPermutation_2\n"${str_1}"\n"${str_2}"\nResult:`);
d      = new Date();
ini    = d.getMilliseconds();
result = checkPermutation_2(str_1,str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Valid permuted strings.\t Time (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('Not valid permuted strings.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`checkPermutation_2\n"${str_3}"\n"${str_4}"\nResult:`);
d      = new Date();
ini    = d.getMilliseconds();
result = checkPermutation_2(str_3,str_4);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Valid permuted strings.\t Time (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('Not valid permuted strings.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}